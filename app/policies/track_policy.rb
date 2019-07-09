class TrackPolicy < ApplicationPolicy

    def new?
        puts user.role
        # puts @artist.name
        user.role == Role.find(2)
    end

end