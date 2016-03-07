class CreateLuvs < ActiveRecord::Migration
  def change
    create_table :luvs do |t|

      t.timestamps null: false
    end
  end
end
