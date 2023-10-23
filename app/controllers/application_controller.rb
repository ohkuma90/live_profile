class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_latest_card

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name, :x_id, :birth, :nickname,
                                              :favorite_food, :hated_food, :holiday,
                                              :hobby, :first_band, :first_live, :image])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:name, :x_id, :birth, :nickname,
                                              :favorite_food, :hated_food, :holiday,
                                              :hobby, :first_band, :first_live, :image])
  end

  def set_latest_card
    if user_signed_in?
      @latest_card = current_user.cards.last
    end
  end

end
