class Track < ApplicationRecord
  has_many :albums_tracks
  has_many :albums, through: :albums_tracks
  belongs_to :artist
end
