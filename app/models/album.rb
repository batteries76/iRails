class Album < ApplicationRecord
  belongs_to :artist
  has_many :albums_tracks
  has_many :tracks, through: :albums_tracks
end
