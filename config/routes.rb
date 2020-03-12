# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'contacts#index'
  resources :contacts, only: %i[index create edit update destroy] do
    collection do
      get :closed
    end
  end
  resources :users, only: %i[new create]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
