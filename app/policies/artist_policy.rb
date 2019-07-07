class ArtistPolicy < ApplicationPolicy
    attr_reader :user, :artist
  
    def initialize(user, artist)
        @user = user
        @artist = artist
    end

    def index?
        true
    end

end