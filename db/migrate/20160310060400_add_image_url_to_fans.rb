class AddImageUrlToFans < ActiveRecord::Migration
  def change
    add_column :fans, :image_url, :string
  end
end
