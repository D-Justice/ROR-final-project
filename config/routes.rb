Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :posts, only: [:index, :new, :create]
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#delete"
  resources :signup, only: [:new, :create]
  
end
