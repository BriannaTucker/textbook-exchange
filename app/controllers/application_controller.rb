class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
<<<<<<< HEAD
    @current_user ||= Guser.find(session[:guser_id]) if session[:guser_id] if session[:guser_id]
      rescue ActiveRecord::RecordNotFound
  end
  
=======
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
>>>>>>> 8b907b49f837310cc1cef0a98b3c9836a03e9d5d
  
  def send_pic
    send_data open("#{Rails.root}/app/assets/images/book.jpg)", "rb") { |f| f.read}
  end
end
