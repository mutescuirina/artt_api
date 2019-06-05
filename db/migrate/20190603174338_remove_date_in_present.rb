class RemoveDateInPresent < ActiveRecord::Migration[5.2]
  def change
    remove_column :presents, :date, :date
  end
end
