Rails.application.routes.draw do

  devise_for :users
  resources :foodexps
  resources :carexps
  resources :housingexps
  resources :taxes
  resources :specs
  resources :utilities
  resources :miscexps

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get '/master', to:'pages#master'

end
