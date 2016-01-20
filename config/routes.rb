Rails.application.routes.draw do
  get '/' => 'home#index'
  root 'home#index'

  # User Create Routes
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  resources :users

  # User Login/Logout Routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # TaskList Routes
  resources :tasklists
  # post '/tasklists/:id/edit' => 'tasklists#update'
  # post '/tasklist/:id' => 'tasklists#upate'

  # Task routes
  resources :tasks




end
