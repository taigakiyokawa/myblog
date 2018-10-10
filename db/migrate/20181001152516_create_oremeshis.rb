class CreateOremeshis < ActiveRecord::Migration[5.2]
  def change
    create_table :oremeshis do |t|
      t.string :title
      t.text :ingre
      t.string :step1
      t.string :step2
      t.string :step3
      t.string :step4
      t.string :final
      t.integer :time
      t.text :category

      t.timestamps
    end
  end
end
