Rails.application.routes.draw do

  root :to => "artists#index"

  resources :artists_comments, only: [:create, :edit, :update, :delete]
  
  devise_for :users

  resources :tracks
  post '/tracks/add_existing' => 'tracks#add_existing_track_to_album'
  
  delete '/albums/:album_id/likes', to: 'likes#delete'
  resources :albums do
    resources :likes, except: [:delete]
  end

  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
