Rails.application.routes.draw do
  
#  get 'commentlists/new'

#  post 'commentlists/create'

#  get 'commentlists/destroy'

#  get 'shops/new'

#  get 'shops/destroy'

#  get 'shops/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :shops, only: [:index,:show,:new,:create,:edit,:update, :destroy]
  resources :commentlists, only: [:index,:show,:new,:create,:edit,:update, :destroy]

end
