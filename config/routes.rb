Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :posts, only: [:index, :new, :create, :show]
  resources :comments, only: [:new, :create]
  post '/comments/:id', to: "comments#delete"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#delete"
  resources :signup, only: [:new, :create]
  resources :user, only: [:index, :show]
  post '/user/:id', to: "user#delete"
  
end
