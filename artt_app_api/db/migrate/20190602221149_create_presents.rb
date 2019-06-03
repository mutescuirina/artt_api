class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|
      t.string :title
      t.string :img
      t.string :description
      t.string :comment
      t.date :date

      t.timestamps
    end
  end
end
