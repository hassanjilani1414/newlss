Rails.application.routes.draw do

  devise_for :users
  root "users#index"
  resources :users
  resources :friendships
  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  resources :posts do
    resources :likes
  end

  post "comments" => "comments#create"
  post "posts"=>"posts#new", as: :post_new


  # For details on the DSL available within this file,
  # see https://guides.rubyonrails.org/routing.html
end
