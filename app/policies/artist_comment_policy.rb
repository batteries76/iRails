class ArtistCommentPolicy < ApplicationPolicy
    # attr_reader :user, :artists_comment
  
    # def initialize(user, artists_comment)
    #     @user = user
    #     @artists_comment = artists_comment
    # end

    def edit?
        puts "IN PUNDIT EDIT"
        # user.admin? or not post.published?
        @artists_comment.user == @user
    end
  
    def update?
        puts "IN PUNDIT UPDATE"
        # user.admin? or not post.published?
        @artists_comment.user == @user
    end
end