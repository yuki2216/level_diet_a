class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.date   :day,      null: false
      t.string :weight,   null: false, default: ""
      t.string :sugar,    null: false, default: ""
      t.string :protein,  null: false, default: ""
      t.string :calorie,  null: false, default: ""
      t.string :lipid,    null: false, default: ""
      t.text :exercise
      t.text :comment
      t.timestamps
    end
  end
end
