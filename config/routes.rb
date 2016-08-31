Rails.application.routes.draw do
  root "home#index"

  match '/auth/:provider/callback', to: 'oauth_sessions#create', via: [:get]
  resources :sessions, only: [:create, :destroy]
end
