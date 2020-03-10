Rails.application.routes.draw do
  root to: 'contacts#index'
  resources :contacts, only: %i[index create edit update destroy] do
    collection do
      get :closed
    end
  end
end
