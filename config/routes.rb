Rails.application.routes.draw do

  resources :students
  resources :questions
  resources :assignments
  resources :users
  # , only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  post "/login", to: "students#login"
  get "/auto_login", to: "students#auto_login"

end
