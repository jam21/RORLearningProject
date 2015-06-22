module SessionsHelper
  def login_user (user)
    session[:user_id]=user.id;
    current_user
  end
  def current_user
    @current_user ||=User.where(id: session[:user_id]).first
  end
  def logged_in?
    if(session[:user_id])
      !User.where(id: session[:user_id]).first.nil?
    else
      false
    end
  end
  def log_out
    session.delete(:user_id)
  end
end
