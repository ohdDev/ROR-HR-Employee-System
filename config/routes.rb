Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :targets
  resources :divisions
  resources :teams
  resources :employees
  resources :users do
    member do
      delete :purge_picture
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'home/index'
  root :to => "home#index"
  
end
