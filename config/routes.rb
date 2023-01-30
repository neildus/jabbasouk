Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  get 'about', to: 'pages#about'
  get 'account', to: 'pages#account'

  resources :users
  resources :products
  resources :bookings
end
