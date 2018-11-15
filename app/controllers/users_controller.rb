class UsersController < ApplicationController

  def index
    # current_user ? redirect_to events_path : redirect_to login_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      sign_in(@user)
      redirect_to new_goal_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :timezone)
  end
end
