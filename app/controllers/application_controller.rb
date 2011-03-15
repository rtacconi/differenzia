class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin
  
  private
  
  def admin
    @current_user.role == 'admin'
  end
  
end
