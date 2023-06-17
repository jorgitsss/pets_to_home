Rails.application.routes.draw do
  devise_for :users
  resources :kindergartens
  resources :proprietaries
  resources :pets
  resources :users
  resources :cities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "kindergartens#index"
end
