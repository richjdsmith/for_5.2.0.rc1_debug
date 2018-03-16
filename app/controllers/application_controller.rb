class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # This is all Pundit Authorization related:
  include Pundit
  # This ensures that on all controller actions, excep for index, the actions are verified with Pundit
  after_action :verify_authorized, except: :index, unless: :devise_controller?
  # This ensures that all Controllers are Policy Scoped with Pundit.
  # after_action :verify_policy_scoped, only: :index, unless: :devise_controller?
  # This gives a flash message for authorization errors and redirects (private method below)
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

 

  private


  def user_not_authorized
    redirect_to(request.referrer || home_path, alert: 'Not autorized')
  end
  
  protected

  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :remember_me, :name]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  

end
