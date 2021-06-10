Rails.application.routes.draw do

  root  'feeds#index' 



  
  get '*not_found' => 'application#routing_error'





  resources :feeds
  # get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]





end
