Rails.application.routes.draw do
  get 'locations/index'

  get 'locations/show'

  get 'locations/new'

  get 'locations/create'

  get 'locations/edit'

  get 'locations/update'

  get 'locations/destroy'

  get 'link_ups/index'

  get 'link_ups/show'

  get 'link_ups/new'

  get 'link_ups/create'

  get 'link_ups/edit'

  get 'link_ups/update'

  get 'link_ups/destroy'

  get 'guests/index'

  get 'guests/show'

  get 'guests/new'

  get 'guests/create'

  get 'guests/edit'

  get 'guests/update'

  get 'guests/destroy'

  get 'hosts/index'

  get 'hosts/show'

  get 'hosts/new'

  get 'hosts/create'

  get 'hosts/edit'

  get 'hosts/update'

  get 'hosts/destroy'

  get 'user_interests/index'

  get 'user_interests/show'

  get 'user_interests/new'

  get 'user_interests/create'

  get 'user_interests/edit'

  get 'user_interests/update'

  get 'user_interests/destroy'

  get 'interests/index'

  get 'interests/show'

  get 'interests/new'

  get 'interests/create'

  get 'interests/edit'

  get 'interests/update'

  get 'interests/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
