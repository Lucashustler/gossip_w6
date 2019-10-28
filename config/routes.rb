Rails.application.routes.draw do

  get '/team', to: 'pages#team'

  get '/contact', to: 'pages#contact'

end
