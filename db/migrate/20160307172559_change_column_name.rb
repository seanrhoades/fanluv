class ChangeColumnName < ActiveRecord::Migration
def change
rename_column :fans, :username, :email
rename_column :artists, :username, :email
end
end
