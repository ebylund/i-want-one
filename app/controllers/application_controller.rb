class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:password, :email) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name,:name, :email, :password, :password_confirmation, :attachment, :banner, :location, :birthday) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name,:name, :email, :password, :password_confirmation, :current_password, :attachment, :location, :birthday, :banner ) }
  end
end
