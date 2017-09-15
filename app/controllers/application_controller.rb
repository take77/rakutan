class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  before_action :configue_permitted_params, if: :devise_controller?
  protect_from_forgery with: :exception

  def after_sign_out_path_for(resource)
    '/users/sign_in'
  end

  protected
  def configue_permitted_params
    devise_parameter_sanitizer.permit(:sign_up){
      |u| u.permit(:email, :password, :affiliation_id, :nickname)
    }
  end
end
