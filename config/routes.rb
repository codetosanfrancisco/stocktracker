Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio' =>"users#my_portfolio"
  get 'search_stocks' => 'stocks#search'
  get 'search_friends' => "users#search"
  get 'my_friends' => "users#my_friends"
  post 'add_friend' => "users#add_friend"
  resources :friendships
  resources :users, only: [:show]
  resources :user_stocks,only: [:create,:destroy]
end
