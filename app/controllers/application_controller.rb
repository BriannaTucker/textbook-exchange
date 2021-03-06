class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def send_pic
    send_data open("#{Rails.root}/app/assets/images/book.jpg)", "rb") { |f| f.read}
  end
  
  private 
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
  
end
