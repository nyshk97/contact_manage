# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'contacts#index'
  resources :contacts, only: %i[index create edit update destroy] do
    collection do
      get :closed
    end
  end
  resources :users, only: %i[new create show edit update]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  resources :comments, only: %i[create edit update destroy]
end
