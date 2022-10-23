Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about' 
  
  
resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
resources :users, only: [:index, :show, :edit]

devise_for :users
end
