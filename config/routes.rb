Rails.application.routes.draw do

  devise_for :users
  root "users#index"
  resources :users
  resources :friendships
  resources  :comments

  post 'specific_post', to: "comments#new", as: 'specific'

  resources :posts do
    resources :likes
  end
  resources :posts do
    resources :comments
  end


  post "posts"=>"posts#new", as: :post_new


  # For details on the DSL available within this file,
  # see https://guides.rubyonrails.org/routing.html
end
