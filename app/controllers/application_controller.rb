class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?
  layout :specify_layout
  
  private
  def specify_layout
    devise_controller? ? "sign" : "application"
  end
  
  def admin?
    @current_user.role == 'admin'
  end
  
end
