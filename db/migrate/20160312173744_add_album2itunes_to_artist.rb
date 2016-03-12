class AddAlbum2itunesToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album2itunes, :string
  end
end
