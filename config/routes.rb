Rails.application.routes.draw do
  resources :hotels do
    resources :orders
  end
  root "hotels#index"
end
