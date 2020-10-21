class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  # devise機能を利用前に、configure_permitted_parameresが実行される
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # 〇〇のデータ操作を許可するアクションメソッド
  # 今回は、ユーザー登録(sign_up)の際に、ユーザー名(:name)のデータ操作が可能
end
