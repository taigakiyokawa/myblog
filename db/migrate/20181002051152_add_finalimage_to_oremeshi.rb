class AddFinalimageToOremeshi < ActiveRecord::Migration[5.2]
  def change
    add_column :oremeshis, :finalimage, :string
  end
end
