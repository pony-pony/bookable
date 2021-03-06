class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    reviews_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username])
  end

  def move_to_signin
    redirect_to new_user_session_path unless user_signed_in?
  end
end
