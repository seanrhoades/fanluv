class AddAlbum4itunesToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album4itunes, :string
  end
end
