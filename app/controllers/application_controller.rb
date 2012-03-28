class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end
  
  def authenticate_any!
      if admin_signed_in?
          true
      else
          authenticate_user!
      end
  end
  
end
