Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  get 'sessions/new'
  get 'sessions/create'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: [:create, :show]
  resources :events, only: [:new, :create, :show, :index]
end
