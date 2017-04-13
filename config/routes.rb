Rails.application.routes.draw do
  devise_for :users
  resources :hotels do
    resources :orders
  end
  root "hotels#index"
end
