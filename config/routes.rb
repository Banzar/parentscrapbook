Rails.application.routes.draw do
  get 'signup', to: 'users#new'

  get 'users/update'

  get 'users/edit'

  get 'users/create'

  get 'users/show'

  root 'users#index'

  resources :users

end
