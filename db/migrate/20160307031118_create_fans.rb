class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :fans, :username, unique: true
  end
end
