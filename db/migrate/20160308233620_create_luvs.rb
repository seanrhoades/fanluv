class CreateLuvs < ActiveRecord::Migration
  def change
    create_table :luvs do |t|
      t.integer :artist_id
      t.integer :fan_id

      t.timestamps null: false
    end
    add_index :luvs, :fan_id
    add_index :luvs, :artist_id
    add_index :luvs, [:fan_id, :artist_id], unique: true
  end
end
