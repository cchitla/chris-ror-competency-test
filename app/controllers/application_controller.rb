class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :current_user

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.first_name = 'Guest'
    guest.last_name = 'User'
    guest.email = 'guest@guest.com'
    guest.roles = 'guest'
    guest
  end

end
