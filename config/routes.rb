Rails.application.routes.draw do
  root to: 'pages#student'
  get "admin", to: "pages#admin"



  devise_for :users

  scope '/admin'  do
    resources :admins
    resources :days
    resources :users

end

end
