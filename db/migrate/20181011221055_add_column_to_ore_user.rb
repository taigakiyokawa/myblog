class AddColumnToOreUser < ActiveRecord::Migration[5.2]
  def change
    add_column :ore_users, :OreImage, :string
  end
end
