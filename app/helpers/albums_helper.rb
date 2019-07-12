module AlbumsHelper

    def create_options
        @options = Track.all.map do |track|
            [track.title, track.id]
        end
    end

    def albums_helper(minutes)
        hours = minutes / 60
        minutes_remaining = minutes % 60
        result = "#{hours}:#{minutes_remaining}"
    end

end
