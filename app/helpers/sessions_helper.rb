module SessionsHelper
  def login_user (user)
    session[:user_id]=user.id;
    current_user
  end
  def current_user
    @current_user ||=User.where(id: session[:user_id]).first
  end
  def logged_in?
    !User.where(id: session[:user_id]).first.nil?
  end
end
