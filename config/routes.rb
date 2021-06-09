Rails.application.routes.draw do
  resources :feeds
  # get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]


end
