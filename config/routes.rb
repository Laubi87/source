Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :items

  # users could sign up multiple times
  resources :users
  # users can have only one session
  resource :session

  get "about", to: "pages#about"

  root "pages#home"


end
