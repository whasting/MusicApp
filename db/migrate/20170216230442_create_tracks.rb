class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :track_title, null: false
      t.integer :album_id, null: false
      t.string :bonus_or_regular

      t.timestamps
    end
    add_index :tracks, :track_title
  end
end
