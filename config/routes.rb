Rails.application.routes.draw do
  get 'authentication/login'
  resources :users
  resources :categories
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
