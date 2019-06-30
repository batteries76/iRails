class CreateArtistsComments < ActiveRecord::Migration[5.2]
  def change
    create_table :artists_comments do |t|

      t.timestamps
    end
  end
end
