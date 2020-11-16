Rails.application.routes.draw do

  devise_for :users
  root "users#index"
  resources :users
  resources :posts
  resources :comments
  resources :likes

  # For details on the DSL available within this file,
  # see https://guides.rubyonrails.org/routing.html
end
