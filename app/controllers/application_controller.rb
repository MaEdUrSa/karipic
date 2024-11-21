class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :configure_permitted_parameters, if: :devise_controller?
  allow_browser versions: :modern


  protected
  def authorize_request(kind = nil) 
    unless kind.include?(current_user.role)
      redirect_to photos_path, notice: "Usted no esta autorizado para esta acción"
    end
  end

  def after_sign_in_path_for(resource)
    photos_path
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo, images_attributes: [:url, :context, :id]])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :photo, images_attributes: [:url, :context, :id]])
    end

end
