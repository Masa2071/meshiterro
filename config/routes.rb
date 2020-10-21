Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'
  # deviseでは、ログイン認証が成功した場合、config/routes.rbファイル内で設定されているrootパスへリダイレクト
  resources :post_images, only: [:new, :index, :create, :show]
end
