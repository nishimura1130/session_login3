Rails.application.routes.draw do

  root  'users#index' 




  resources :feeds
  # get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]





end
