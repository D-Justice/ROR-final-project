Rails.application.routes.draw do
  get "/home", to: "index#index"
  resources :posts, only: [:index, :new, :create]
end
