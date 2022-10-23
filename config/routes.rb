Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about' 
  devise_for :users
  
resources :books, only: [:new, :create, :index, :show, :edit]
resources :users, only: [:index, :show, :edit]
end
