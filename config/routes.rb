Rails.application.routes.draw do
  resources :divisions
  resources :targets
  resources :teams
  resources :employees
  resources :users

  get 'home/index'
  root :to => "home#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
