class AddImage3ToOremeshi < ActiveRecord::Migration[5.2]
  def change
    add_column :oremeshis, :image3, :string
  end
end
