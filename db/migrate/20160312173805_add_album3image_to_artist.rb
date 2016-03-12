class AddAlbum3imageToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album3image, :string
  end
end
