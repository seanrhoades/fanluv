class AddAlbum1itunesToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album1itunes, :string
  end
end
