class AddAlbum1imageToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album1image, :string
  end
end
