class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :artists, :username, unique: true
  end
end
