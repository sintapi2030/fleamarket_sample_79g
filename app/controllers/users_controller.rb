class UsersController < ApplicationController
  before_action :move_to_index
  def edit
    @user=User.find(current_user.id)
  end

  def show
  end

  def update
    @user=User.find(current_user.id)
    if @user.new(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname)
  end

  def move_to_index
    unless user_signed_in?
      flash[:alert] = "ユーザー情報はログイン後に行ってください"
      redirect_to root_path
    end
  end
end
