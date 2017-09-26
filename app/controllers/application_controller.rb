class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :authorize

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
  
  # def check_owner

  # end

  def authorize
    unless logged_in?
      flash[:danger] = "You must be logged in to that account do that"
      redirect_to new_session_path 
    end

  end
end
