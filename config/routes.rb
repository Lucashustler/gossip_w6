Rails.application.routes.draw do

  get '/team', to: 'pages#team'

  get '/contact', to: 'pages#contact'

  get '/welcome/:first_name', to: 'pages#welcome'

end
