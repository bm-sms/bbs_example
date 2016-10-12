class Users::RegistrationsController < Devise::RegistrationsController
  layout 'devise'

  before_action :configure_sign_up_params, only: [:create]

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [profile_attributes: [:avatar_id, :nickname]])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end
