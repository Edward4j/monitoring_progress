class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false do |t|
      t.integer :ID
      t.string :User
      t.float :HW_01
      t.float :HW_02
      t.float :HW_03
      t.float :HW_04
      t.float :HW_05
      t.float :HW_06
      t.float :HW_07
      t.float :HW_08
      t.float :HW_09
      t.float :HW_10
      t.float :HW_11
      t.float :HW_12
      t.float :HW_Avg
      t.float :Lab_01
      t.float :Lab_02
      t.float :Lab_03
      t.float :Lab_04
      t.float :Lab_05
      t.float :Lab_06
      t.float :Lab_07
      t.float :Lab_08
      t.float :Lab_09
      t.float :Lab_10
      t.float :Lab_11
      t.float :Lab_12
      t.float :Lab_Avg
      t.float :Midterm
      t.float :Final

      t.timestamps null: false
    end
  end
end
