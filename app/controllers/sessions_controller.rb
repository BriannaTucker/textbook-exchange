class SessionsController < ApplicationController
  
  
  def create
<<<<<<< HEAD
    guser = Guser.from_omniauth(env["omniauth.auth"])
    session[:guser_id] = guser.id
=======
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
>>>>>>> 8b907b49f837310cc1cef0a98b3c9836a03e9d5d
    redirect_to root_path
  end

  
  
  def destroy
<<<<<<< HEAD
    session[:guser_id] = nil
=======
    session[:user_id] = nil
>>>>>>> 8b907b49f837310cc1cef0a98b3c9836a03e9d5d
    redirect_to root_path
  end
  
end