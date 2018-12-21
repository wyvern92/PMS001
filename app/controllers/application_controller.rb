class ApplicationController < ActionController::Base
  # skip_before_action ​:authorize
  #
  before_action :authorize

  protected
  def authorize
    unless Authentication.find_by(id: session[:user_id])
      redirect_to login_url, notice:"Please log in"
    end
  end

end
