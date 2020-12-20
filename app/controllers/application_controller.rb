class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar] )
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    # 登録時も必要であればsign_upを追加
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar] )
  end
end
