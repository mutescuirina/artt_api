class CreateFutures < ActiveRecord::Migration[5.2]
  def change
    create_table :futures do |t|
      t.string :title
      t.string :img
      t.string :description
      t.string :comment
      t.date :date
      t.boolean :attendance

      t.timestamps
    end
  end
end
