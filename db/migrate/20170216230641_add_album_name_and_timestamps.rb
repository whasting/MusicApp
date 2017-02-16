class AddAlbumNameAndTimestamps < ActiveRecord::Migration
  def change
    add_column :albums, :album_name, :string, null: false
    add_index :albums, :album_name
    add_column :albums, :created_at, :datetime
    add_column :albums, :updated_at, :datetime
  end
end
