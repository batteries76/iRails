class LikesController < ApplicationController
    before_action :find_album

    def create
        @album.likes.create(user_id: current_user.id)
        redirect_to album_path(@album)
    end

    def delete
        like = Like.find_by(user_id: current_user.id)
        # @album.likes.delete(user_id: current_user.id)
        Like.delete(like.id)
        redirect_to album_path(@album)
    end
       
    private
       
    def find_album
         @album = Album.find(params[:album_id])
    end
end
