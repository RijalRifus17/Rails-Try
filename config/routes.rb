Rails.application.routes.draw do
  resources :divisions
  resources :users

  post 'coba', to: 'coba#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
