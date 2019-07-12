class Track < ApplicationRecord
  has_many :albums_tracks
  has_many :albums, through: :albums_tracks
  belongs_to :artist

  has_one_attached :track_image
  
  validates :title, presence: true
end
