Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  get 'about', to: 'products#about'

  resources :users
  resources :products
  resources :bookings
end
