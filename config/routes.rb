Rails.application.routes.draw do
  get 'carts/index'
  resources :categories
  resources :products
  devise_for :users
  root to: 'pages#home'
  resources :carts
  resources :orders
#   root 'orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about' => 'pages#about'
  get '/profile' => 'pages#profile'
end
