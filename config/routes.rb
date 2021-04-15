Rails.application.routes.draw do
  # namespace :api do 
  #   namespace :v1 do 
      root 'welcome#index'
      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      get '/profile', to:  'users#profile'
      delete '/meetups/:id', to: 'meetups#destroy'
      get '/fav_meetups', to: 'favorite_meetups#index'
      get '/fav_meetups/all', to: 'favorite_meetups#all'
      post '/fav_meetups', to: 'favorite_meetups#create'
      delete '/fav_meetups/:id', to: 'favorite_meetups#destroy'
      resources
      resources :meetups
      resources :users
      resources :favorite_meetups
      # , only: [:create, :destroy]
  #   end 
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
