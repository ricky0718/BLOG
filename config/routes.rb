Rails.application.routes.draw do


  devise_for :users
  root to: "entry#index"
  resources :entry
  resources :likes, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
