module AlbumsHelper

    def create_options
        @options = Track.all.map do |track|
            [track.title, track.id]
        end
    end

end
