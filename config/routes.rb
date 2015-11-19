Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :songs

  root to: "users#index"
end
