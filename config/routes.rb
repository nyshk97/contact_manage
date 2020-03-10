Rails.application.routes.draw do
  root to: 'contacts#index'
  resources :contacts, only: %i[index create edit update destroy] do
    collection do
      get :closed
    end
  end
  resources :users, only: %i[new create]
  resources :sessions, only: %i[new create destroy]
end
