Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  get 'about', to: 'pages#about'
  get 'account', to: 'pages#account'
  get 'yoda', to: 'pages#yoda'
  get 'thankyou', to: 'pages#thankyou'

  resources :users
  resources :products
  resources :bookings do
    resources :ratings, only: [:index, :new, :create]
  end
  resources :ratings, only: [:show, :destroy, :update, :edit]
end
