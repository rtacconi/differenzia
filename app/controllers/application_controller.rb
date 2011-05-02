class ApplicationController < ActionController::Base
	before_filter :authenticate_user!
  protect_from_forgery
  helper_method :current_user_admin?
  layout :specify_layout
  
  private
  def specify_layout
    devise_controller? ? "sign" : "application"
  end
  
  def current_user_admin?
    @current_user.role == 'admin'
  end
  
end
