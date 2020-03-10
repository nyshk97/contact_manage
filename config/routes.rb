Rails.application.routes.draw do
  root to: 'contacts#index'
  resources :contacts, only: %i[index create edit update destroy]
  get 'search_contact', to: 'search_contacts#input'
  get 'search_result', to: 'search_contacts#result'
end
