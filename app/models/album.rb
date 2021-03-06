class Album < ApplicationRecord
  belongs_to :artist
  has_many :albums_tracks
  has_many :tracks, through: :albums_tracks
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  has_one_attached :album_image

  validates :title, presence: true
end
