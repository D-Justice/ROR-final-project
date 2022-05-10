Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :posts, only: [:index, :new, :create]
  resources :login, only: [:index]
  resources :signup, only: [:index, :new, :create]
  
end
