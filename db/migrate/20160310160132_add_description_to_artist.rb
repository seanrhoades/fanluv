class AddDescriptionToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :description, :string
  end
end
