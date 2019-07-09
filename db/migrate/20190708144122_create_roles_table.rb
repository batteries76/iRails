class CreateRolesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :roles_tables do |t|
      t.string :role
    end
  end
end
