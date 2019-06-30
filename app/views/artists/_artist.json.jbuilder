json.extract! artist, :id, :name, :band, :active, :created_at, :updated_at
json.url artist_url(artist, format: :json)
