class AddressesController < ApplicationController
  def edit
    @address = Address.find_by(user_id: current_user.id)
  end
  
  def update
    @address = Address.find_by(user_id: current_user.id)
    if @address.update(address_params)
      flash[:notice] = '住所登録を変更しました'
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  private
  def address_params
    params.require(:address).permit(:address, :city, :prefecture_id, :zipcode, :shipping_hurigana_first, :shipping_hurigana_family, :shipping_first_name, :shipping_family_name, :others, :phone_number)
  end
end
