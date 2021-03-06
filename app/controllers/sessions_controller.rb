class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to goals_path
    end
  end

  def create
    user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if user
      sign_in(user)
      redirect_to goals_path
    else
      flash[:errors] = ['Invalid username or password']
      render :new
    end
  end

  def destroy
    sign_out
    # redirect_to new_session_url
  end
end
