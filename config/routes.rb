Rails.application.routes.draw do
  root to: 'tests#index'
  resources :tests do
    collection do
      get :receive_test
    end
  end
end
