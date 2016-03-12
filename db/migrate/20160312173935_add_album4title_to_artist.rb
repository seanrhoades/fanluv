class AddAlbum4titleToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album4title, :string
  end
end
