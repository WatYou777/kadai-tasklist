Rails.application.routes.draw do
  get 'users/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'tasks#index'
  resources :tasks
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:show, :new, :create]
end