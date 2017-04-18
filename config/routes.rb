Rails.application.routes.draw do
  root to: 'pages#home'


  devise_for :users
  get "day", to:  "pages#day"

  devise_for :admins
  get "admin", to:  "pages#admin"


    scope '/admin' do
      resources :user
    end

    namespace :user do
      resources :days
  end



    namespace :admin do
        resources :days
  end

        namespace :admin do
            resources :users
    end


  end
