class UsersController < ApplicationController
  def index
    @users = User.all
    @user_NO = 0
  end

  def show
    @user = User.find_by(id: params[:id])
    @user_NO = params[:user_NO]
  end

  def new
    @user = User.new
  end
  def create
   @user = User.new 
   @user.name = params[:user][:name]
   @user.password_digest = params[:user][:password_digest]
   @user.save
   redirect_to users_path, notice: 'Welcome！'
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  def update
   @user = User.find_by(id: params[:id])
   @user.name = params[:user][:name]
   @user.password_digest = params[:user][:password_digest]
   @user.save
   redirect_to users_path, notice: 'Your details are changed！'
  end

  def destroy
   @user = User.find_by(id: params[:id])
   @user.destroy
   redirect_to users_path, notice: 'Your details are destroyed
   '
  end
end
