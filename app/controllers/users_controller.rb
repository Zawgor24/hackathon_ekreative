class UsersController < ApplicationController
  before_action :find_user

  def show

  end

  def index
    @users = User.all
  end

  def edit

  end

  def update
    @user.update(user_params)

    redirect_to current_user
  end

  def destroy
    @user.destroy

    redirect_to root_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:avatar, :email,
      :first_name, :last_name, :password)
  end
end