Rails.application.routes.draw do
  root 'pages#home'

  get 'user_firms/show'
  get 'user_firms/new'
  
  get 'users/index'
  get 'users/show'
  get 'users/new'

  resources :user_firms, only: [:show, :new, :create]
  
  resources :user_firms do
    resources :users
  end
end
