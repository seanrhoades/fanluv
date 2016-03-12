class AddAlbum2titleToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album2title, :string
  end
end
