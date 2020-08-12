class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_item, only: [:show, :edit,:update, :destroy, :confirmation]

  def index
    @items = Item.all.order(id:'DESC').limit(4)
    @related_item = Item.all.sample(4)
  end

  def sell
  end

  def new
    @item = Item.new
    @item.images.new
    @category_parent_array = Category.where(ancestry: nil)

  end

  def get_category_children
    @category_children = Category.find_by(id: "#{params[:parent_id]}").children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path(@item)
    else
      @item.images.new
      @category_parent_array = Category.where(ancestry: nil)
      render :new
    end
  end

  def confirmation
    if @item.buyer_id
      flash[:alert] = '売却済みの商品のため、購入できません'
      redirect_to action: "show"
    end
    @card = current_user.credit
    if @card.blank?
      redirect_to controller: "credit", action: "new"
      flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @customer_card = customer.cards.retrieve(@card.card_id)
      @seller = User.find(@item.seller_id)
    end
  end

  def show
    @user_name = User.find(@item.seller_id).nickname
    @owner_place = User.find(@item.seller_id).address.prefecture.name
    @brand = Brand.find(@item.brand_id).brand_name
    @category_name = Category.find(@item.category_id).category_name
    @shipping = Shipping.find(@item.shipping_id).name
    @status = Status.find(@item.status_id).name
    @fee = Fee.find(@item.fee_id).name
    @next_item = Item.where(id: (params[:id].to_i + 1))
    @prev_item = Item.where(id: (params[:id].to_i - 1))

    if @item.category.has_parent?
      if @item.category.parent.has_parent?
        @grandchild = @item.category
        @child = @item.category.parent
        @parent = @item.category.parent.parent
        @grandchildren = @child.children
        @children = @parent.children
      else
        @child = @item.category
        @parent = @item.category.parent
        @children = @parent.children
      end
    else
      @parent = @item.category
    end

  end


  def edit
    @category_parent_array = Category.where(ancestry: nil)
    if @item.category.has_parent?
      if @item.category.parent.has_parent?
        @grandchild = @item.category
        @child = @item.category.parent
        @parent = @item.category.parent.parent
        @grandchildren = @child.children
        @children = @parent.children
      else
        @child = @item.category
        @parent = @item.category.parent
        @children = @parent.children
      end
    else
      @parent = @item.category
    end
  end




  def update
    @item.update(item_params)
    if @item.valid?
      redirect_to item_path(@item)
    else
      @category_parent_array = Category.where(ancestry: nil)
      if @item.category.has_parent?
        if @item.category.parent.has_parent?
          @grandchild = @item.category
          @child = @item.category.parent
          @parent = @item.category.parent.parent
          @grandchildren = @child.children
          @children = @parent.children
        else
          @child = @item.category
          @parent = @item.category.parent
          @children = @parent.children
        end
      else
        @parent = @item.category
      end
      render :edit
    end
end


  def destroy

  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :description, :status_id, :fee_id, :owner_area, :shipping_id, :seller_id, :category_id, :brand_id, images_attributes: [:image, :_destroy, :id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
