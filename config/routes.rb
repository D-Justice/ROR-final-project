Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :posts, only: [:index, :new, :create, :show]
  resources :comments, only: [:new, :create]
  resources :user, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  
  resources :signup, only: [:index, :new, :create]
  post '/comments/:id', to: "comments#delete"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  post '/logout', to: "sessions#delete"
  post '/user/:id', to: "user#delete"
  
end
