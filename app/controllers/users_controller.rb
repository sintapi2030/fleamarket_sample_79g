class UsersController < ApplicationController
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
end
