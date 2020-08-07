class CreditController < ApplicationController
  before_action :set_card, only: [:show, :delete, :buy]

  def pay
    Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
    if params['payjpToken'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
        card: params['payjpToken'],
        metadata: {user_id: current_user.id}
      )
      @card = Credit.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: :show
        flash[:notice] = 'クレジットカードの登録が完了しました'
      else
        redirect_to action: "pay"
        flash[:alert] = 'クレジットカード登録に失敗しました'
      end
    end
  end  

  def new
    card = Credit.where(user_id: current_user.id)
    redirect_to action: "show" if card.exists?
  end
  
  def show
    if @card.blank?
      redirect_to action: "new"
    else
      Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @customer_card = customer.cards.retrieve(@card.card_id)
    end
  end
    
  def buy
    @item = Item.find(params[:item_id])
    if @card.blank?
      redirect_to action: "new"
      flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
      Payjp::Charge.create(
        amount: @item.price,
        customer: @card.customer_id,
        currency: 'jpy',
      )
      if @item.update(buyer_id: current_user.id)
        flash[:notice] = '購入しました。'
        redirect_to item_path(@item.id)
      else
        flash[:alert] = '購入に失敗しました。'
        redirect_to item_path(@item.id)
      end
    end
  end
      
  def delete
    if @card.blank?
      redirect_to action: "new"
    else
      Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      customer.delete
      @card.delete
      flash[:notice] = 'クレジットカードを削除しました。購入の際は再度登録をお願いいたします。'
      redirect_to root_path
    end
  end
  
  private

  def set_card
    @card = current_user.credit
  end
end