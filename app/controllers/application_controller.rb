class ApplicationController < ActionController::Base
  def logged_in?
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def require_user
    if !logged_in?
      redirect_to root_path
    end
  end

  def is_admin?
    if @current_user.user_type != "admin"
      redirect_to cars_path
    end
  end
end
