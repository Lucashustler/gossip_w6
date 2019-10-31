Rails.application.routes.draw do
    root 'gossips#index'

    get '/contact', to: 'pages#contact'
    get '/team', to: 'pages#team'
    get '/index', to: 'gossips#index'
    get '/gossip/:id', to: 'gossips#show'
    get 'welcome/:user_first_name', to: 'pages#welcome'

    resources :gossips
    resources :users
    resources :sessions, only: [:new, :create, :destroy]
  
  end