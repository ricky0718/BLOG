Rails.application.routes.draw do


  devise_for :users
  root to: "entry#index"
  resources :entry do
    resources :comments, only: :create
    collection do
      get "muscle"
    end 
  end
  
  resources :likes, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show,:edit, :update, :destroy]
  resources :signup, only: [:create, :new]
end
