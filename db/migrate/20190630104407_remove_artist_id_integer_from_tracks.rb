class RemoveArtistIdIntegerFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tracks, :artist_id, :integer
  end
end
