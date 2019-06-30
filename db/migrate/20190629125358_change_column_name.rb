class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :albums_tracks, :albums_id, :album_id
    rename_column :albums_tracks, :tracks_id, :track_id
  end
end
