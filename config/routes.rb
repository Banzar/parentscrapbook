Rails.application.routes.draw do
  get 'sessions/new'

  get 'signup', to: 'users#new'

  get 'users/update'

  get 'users/edit'

  get 'users/create'

  get 'users/show'

  root 'users#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]

end
