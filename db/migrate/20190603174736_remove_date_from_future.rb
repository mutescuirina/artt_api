class RemoveDateFromFuture < ActiveRecord::Migration[5.2]
  def change
    remove_column :futures, :date, :date
  end
end
