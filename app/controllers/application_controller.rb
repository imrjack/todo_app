class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def log_in(user)
    session[:user_id]=user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    
  end
  
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session[:user_id]= nil
    redirect_to login_path
  end
  def require_user
    if !logged_in?
      flash[:danger]="Must be logged in to do that"
    end
  end
end