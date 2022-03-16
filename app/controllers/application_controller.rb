class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def redirect_if_not_logged_in
    unless current_user
      redirect_to new_session_path
    end 
  end

end
