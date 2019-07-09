class DropTableUserRolesTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_roles_tables
  end
end
