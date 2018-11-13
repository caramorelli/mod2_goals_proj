class UsersController < ApplicationController
  def new
    @user = User.new
  end

<<<<<<< HEAD

  def index

  end

  def new
    @user = User.new
  end

=======
  def create
    @user = User.new(user_params)
>>>>>>> 557d6460948a5e53f7043c18b91ce437e1372109

    if @user.save
      sign_in(@user)
      redirect_to events
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
