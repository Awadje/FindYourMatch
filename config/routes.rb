Rails.application.routes.draw do
  resources :days
  root to: 'pages#home'


  devise_for :users
    resources :admins
    resources :days
    resources :users



end
