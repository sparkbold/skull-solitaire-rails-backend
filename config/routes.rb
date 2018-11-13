# frozen_string_literal: true

Rails.application.routes.draw do
  
  
  namespace :api do
    namespace :v1 do
      resources :cards, only: [:index]
      resources :users, only: [:create]
      resources :games
      post '/login', to: 'auth#create'
      post '/postgame', to: 'games#create'
      get '/profile', to: 'users#profile'
    end
  end
end
