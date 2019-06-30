class RemoveAlbumIdFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tracks, :album, foreign_key: true
  end
end
