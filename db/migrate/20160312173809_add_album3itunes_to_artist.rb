class AddAlbum3itunesToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album3itunes, :string
  end
end
