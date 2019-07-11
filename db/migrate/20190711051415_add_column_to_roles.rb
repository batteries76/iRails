class AddColumnToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :description, :string
    rename_column :roles, :role_type, :privilege
  end
end
