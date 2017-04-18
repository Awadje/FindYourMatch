Rails.application.routes.draw do
  root to: 'pages#home'


  devise_for :users
  get "day", to:  "pages#day"

  devise_for :admins
  get "admin", to:  "pages#admin"


  authenticate :user do
    scope "/user" do
      resources :days
    end
  end

  authenticate :admin do
    scope "/admin" do
      resources :days
    end
  end

  authenticate :admin do
    scope "/admin" do
      resources :users
      end
    end

  end
