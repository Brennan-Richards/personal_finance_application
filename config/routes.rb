Rails.application.routes.draw do

  resources :carexps

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get '/master', to:'pages#master'

end
