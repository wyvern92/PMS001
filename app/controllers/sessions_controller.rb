class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    user = Authentication.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url, notice: "Logged in!"
    else
      redirect_to login_url, alert: "invalid combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to authentications_url, notice: "logged out"
  end
end
