class SessionsController < ApplicationController

  def new
    # unless current_user.nil?
    #   redirect_to events_path
    # end
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
      flash.now[:errors] = ['Invalid username or password']
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to new_session_url
  end
end
