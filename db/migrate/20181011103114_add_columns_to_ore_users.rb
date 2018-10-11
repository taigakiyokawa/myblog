class AddColumnsToOreUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :ore_users, :username, :string
  end
end
