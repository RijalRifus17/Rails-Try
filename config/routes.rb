Rails.application.routes.draw do
  resources :divisions
  resources :users

  post '/login', to: 'auth#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
