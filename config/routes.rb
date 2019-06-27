Rails.application.routes.draw do

  resources :foodexps
  resources :carexps
  resources :housingexps
  resources :taxes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get '/mastererror', to:'pages#mastererror'

  get '/master', to:'pages#master'

end
