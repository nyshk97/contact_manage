Rails.application.routes.draw do
  root to: 'contacts#index'
  resources :tests do
    collection do
      get :receive_test
    end
  end

  resources :contacts, only: %i[index create edit update destroy]
end
