class AddImage1ToOremeshi < ActiveRecord::Migration[5.2]
  def change
    add_column :oremeshis, :image1, :string
  end
end
