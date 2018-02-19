Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/destroy'

  get 'guitars/index'

  get 'guitars/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guitars
end
