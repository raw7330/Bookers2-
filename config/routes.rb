Rails.application.routes.draw do
  get 'home/about' => 'homes#about'
  
  devise_for :users
  resources :books
  resources :users,only: [:show,:index,:edit,:update]
  root 'homes#top'
  
 end