Rails.application.routes.draw do
  namespace :api do
    resources :recipes, only: [ :index, :show, :create ]  # Added 'show' for single recipe fetch
    resources :favorites, only: [ :index, :create, :destroy ]
  end

  resources :users, only: [ :create, :show ]
  post "/login", to: "sessions#create"
  get "/favorites", to: "favorites#index"
  post "/favorites", to: "favorites#create"
  delete "/favorites/:id", to: "favorites#destroy"
end
