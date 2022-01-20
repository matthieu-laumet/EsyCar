Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cars do
    collection do
      get :my_location
    end
   resources :bookings, only: [ :new, :create ]
  end
end
