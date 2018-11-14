class UsersController < ApplicationController

  def index
    # current_user ? redirect_to events_path : redirect_to login_path
    if current_user
      redirect_to goals_path 
    else
      redirect_to login_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in(@user)
      redirect_to events_path
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :timezone)
  end
end
