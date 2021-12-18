Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cars, only: [ :show, :index ] do
   resources :bookings, only: [ :new, :create ]
  end
end
