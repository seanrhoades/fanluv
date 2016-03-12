class AddAlbum2imageToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album2image, :string
  end
end
