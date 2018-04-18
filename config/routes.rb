Rails.application.routes.draw do
  resources :users, :hosts, :guests, :locations, :interests, :link_ups, :user_interests

end
