Rails.application.routes.draw do
  post "/sing_in", to: 'authentication#login'
  post "/sing_up", to: "authentication#create_user"
  resources :users
  resources :categories
  resources :products
end
