Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio' =>"users#my_portfolio"
  get 'search_stocks' => 'stocks#search'
  resources :user_stocks,only: [:create,:destroy]
end
