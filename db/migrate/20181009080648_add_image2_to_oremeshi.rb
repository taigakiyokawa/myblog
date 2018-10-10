class AddImage2ToOremeshi < ActiveRecord::Migration[5.2]
  def change
    add_column :oremeshis, :image2, :string
  end
end
