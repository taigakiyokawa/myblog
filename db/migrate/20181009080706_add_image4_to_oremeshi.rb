class AddImage4ToOremeshi < ActiveRecord::Migration[5.2]
  def change
    add_column :oremeshis, :image4, :string
  end
end
