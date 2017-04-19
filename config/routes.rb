Rails.application.routes.draw do
  resources :days
  root to: 'pages#home'


  devise_for :users
  resources :users
  resources :days, only: [:show]

  devise_for :admins
    resources :admins
    resources :days
    resources :users
  


end
