module TracksHelper

    def create_tracks_options
        @options = Album.all.map do |album|
            ["#{album.title} by #{album.artist.name}", album.id]
        end
    end

end
