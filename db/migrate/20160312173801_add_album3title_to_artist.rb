class AddAlbum3titleToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :album3title, :string
  end
end
