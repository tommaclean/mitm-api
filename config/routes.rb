Rails.application.routes.draw do
  # namespace :api do 
  #   namespace :v1 do 
      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      get '/profile', to:  'users#profile'
      get '/fav_meetups', to: 'favorite_meetups#index'
      post '/fav_meetups', to: 'favorite_meetups#create'
      resources :meetups
      resources :users
      resources :favorite_meetups
      # , only: [:create, :destroy]
  #   end 
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
