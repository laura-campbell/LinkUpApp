Rails.application.routes.draw do
  resources :users, :hosts, :guests, :locations, :interests, :link_ups, :user_interests

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create", as: "sessions"

  post "logout", to: "sessions#logout", as: "logout"


end
