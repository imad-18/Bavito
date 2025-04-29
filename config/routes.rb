Rails.application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "products/index"
  root 'home#index'
  get 'home/index'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  resources :products, only: [:index]
end