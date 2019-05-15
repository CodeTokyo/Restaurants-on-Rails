class ChangeIntegerToString < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :phone_number, :integer
    remove_column :customers, :phone_number, :integer
  end
end
