class TrackPolicy < ApplicationPolicy

    def new?
        puts user.role
        user.role == Role.find(1)
    end

end