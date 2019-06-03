class CreatePasts < ActiveRecord::Migration[5.2]
  def change
    create_table :pasts do |t|
      t.string :title
      t.string :img
      t.string :description
      t.string :comment

      t.timestamps
    end
  end
end
