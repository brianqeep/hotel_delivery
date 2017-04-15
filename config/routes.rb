Rails.application.routes.draw do
  devise_for :users
  resources :hotels do
    resources :orders
  end
  resources :hotels do
    member do
      put "like", to: "hotels#upvote"
      put "unlike", to: "hotels#downvote"
    end
  end
  root "hotels#index"
end
