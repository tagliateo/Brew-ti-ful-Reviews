module SessionsHelper
  def current_user
    User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end
end
