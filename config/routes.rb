Rails.application.routes.draw do
  resources :post1s
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#home"
  resources :users
end
