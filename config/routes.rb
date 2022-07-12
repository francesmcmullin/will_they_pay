Rails.application.routes.draw do
  resources :plans
  resources :companies
  resources :treatments
  resources :user_types
  devise_for :users
  resources :results
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
end
