class RemoveAlbumtitleFromArtist < ActiveRecord::Migration
  def change
    remove_column :artists, :albumtitle, :string
  end
end
