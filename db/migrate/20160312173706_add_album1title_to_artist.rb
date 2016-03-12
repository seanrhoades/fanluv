class AddAlbum1titleToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album1title, :string
  end
end
