Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get '/master', to: 'modules#master'

  get '/car', to: 'modules#car'

  get '/groceries', to: 'modules#groceries'

  get '/housing', to: 'modules#housing'

  get 'taxes', to: 'modules#taxes'

end
