class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name, :x_id, :birth, :nickname,
                                              :favorite_food, :hated_food, :holiday,
                                              :hobby, :first_band, :first_live])
  end
end
