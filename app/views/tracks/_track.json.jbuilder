json.extract! track, :id, :title, :album_id, :length, :artist_id, :created_at, :updated_at
json.url track_url(track, format: :json)
