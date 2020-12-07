class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def google_login
   user_email = request.env['omniauth.auth']['info']['email']
   user_name = request.env['omniauth.auth']['info']['name']
   user_image = request.env['omniauth.auth']['info']['image']
   @user = User.find_or_create_by(email: user_email) do |user|
     user.name = user_name
     user.password = SecureRandom.hex
     user.profile_img = user_image
   end
   session[:user_id] = @user.id
   redirect_to user_path(@user)
 end
end
