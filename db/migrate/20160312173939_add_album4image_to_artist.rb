class AddAlbum4imageToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album4image, :string
  end
end
