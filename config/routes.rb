Rails.application.routes.draw do
  resources :reviews
  resources :providers
  resources :plans
  resources :companies
  resources :treatments
  resources :user_types
  resources :results
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
