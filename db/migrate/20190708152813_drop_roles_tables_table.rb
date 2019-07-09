class DropRolesTablesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :roles_tables
  end
end
