Rails.application.routes.draw do

  # users could sign up multiple times
  resources :users
  # users can have only one session
  resource :session

  get "about", to: "pages#about"

  root "pages#home"


end