Rails.application.routes.draw do

  devise_for :users
  get '/users/:id', to: 'users#show', as: :user
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guitars do
    resources :bookings, only:[:create] do 
      member do 
        get 'confirmation'
      end
    end
  end
end
