module AlbumsHelper

    def create_options
        @options = Track.all.map do |track|
            [track.title, track.id]
        end
    end

    def minutes_helper(minutes)
        hours = minutes / 60
        minutes_remaining = minutes % 60
        if hours < 1
            return "#{minutes_remaining} minutes"
        elsif hours == 1 
            return "#{hours} hour #{minutes_remaining} minutes"
        else
            return "#{hours} hours #{minutes_remaining} minutes"
        end
    end

end
