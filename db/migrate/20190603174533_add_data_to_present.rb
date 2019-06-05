class AddDataToPresent < ActiveRecord::Migration[5.2]
  def change
    add_column :presents, :date, :string
  end
end
