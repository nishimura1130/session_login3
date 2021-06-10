Rails.application.routes.draw do

  root  'feeds#index' 




  
  resources :feeds
  # get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  
  
  get '*not_found' => 'application#routing_error'

end
