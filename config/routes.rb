Rails.application.routes.draw do

  #get 'homes/top'
  devise_for :users
  root to: "homes#top"

  resources :books, only: [:new, :create, :index, :show]

  resources :users, only: [:show, :edit]

get 'homes/about' => 'homes#about', as: :about

end
