class AddColumnsToFans < ActiveRecord::Migration
  def change
    add_column :fans, :bio, :string
    add_column :fans, :location, :string
    add_column :fans, :facebook, :string
    add_column :fans, :twitter, :string
    add_column :fans, :lastfm, :string
  end
end
