Rails.application.routes.draw do
  resources :stores
  resources :pets
  resources :users



  namespace :owner do
  resources :stores
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'



end
