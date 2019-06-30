class CreateAlbumsTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_tracks do |t|
      t.references :albums, foreign_key: true
      t.references :tracks, foreign_key: true

      t.timestamps
    end
  end
end
