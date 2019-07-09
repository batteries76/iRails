class AddRoleTypeToUserRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :user_roles, :role_type, :string
  end
end
