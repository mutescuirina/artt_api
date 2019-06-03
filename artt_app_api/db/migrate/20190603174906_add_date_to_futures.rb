class AddDateToFutures < ActiveRecord::Migration[5.2]
  def change
    add_column :futures, :date, :string
  end
end
