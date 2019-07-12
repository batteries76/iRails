class Artist < ApplicationRecord
    has_many :albums

    has_many_attached :artist_image
    
    validates :name, presence: true
end
