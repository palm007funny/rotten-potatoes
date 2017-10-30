class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
     rescue ActiveRecord::RecordNotFound
  end

  def require_user
     redirect_to '/auth/facebook' unless current_user
     flash[:notice] = "Plase login !!!"
  end 

  def require_admin 
     redirect_to '/' unless current_user.admin? 
  end
  
end