class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :datetime_format

  def datetime_format(date)
      date.strftime("%A, %B %d")
  end
end
