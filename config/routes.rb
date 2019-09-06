Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#my_portfolio'
  get 'index', to: 'welcome#index'
  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]
  get 'my_friends', to: 'users#my_friends'
  get 'search_friends', to: 'users#search'

  
end
