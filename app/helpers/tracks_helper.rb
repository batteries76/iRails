module TracksHelper

    def create_tracks_options
        @options = Album.all.map do |album|
            ["#{album.title} by #{album.artist.name}", album.id]
        end
    end

    def seconds_helper(seconds)
        minutes = seconds / 60
        seconds_remaining = seconds % 60
        result = "#{minutes}:#{seconds_remaining}"
    end

end
