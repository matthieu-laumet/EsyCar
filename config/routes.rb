Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: 'pages#home'

  resources :cars do
   resources :bookings, only: [ :new, :create ]
  end
end
