Rails.application.routes.draw do

  resources :artists_comments, only: [:create]
  devise_for :users
  root :to => "artists#index"
  resources :tracks
  post '/tracks/add_existing' => 'tracks#add_existing_track_to_album'
  resources :albums
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
