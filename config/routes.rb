Rails.application.routes.draw do

  root to: 'days#index'
  resources :days, only: [:index, :show]



   namespace :admin do
   root to: 'days#index'
    resources :days, only: [:index, :create]
    resources :users, only: [:index, :update]

  end
    devise_for :users

end
