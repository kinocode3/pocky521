class SessionsController < ApplicationController
  
  def create
   user = User.find_by(name: params[:name])
    if user && user.password_digest == params[:password_digest]
     session[:user_id] = user.id
     redirect_to users_path
    else
      
      
      redirect_to login_path, notice: 'Please put your username and password again'
    end  
 
  
  end
 
end
