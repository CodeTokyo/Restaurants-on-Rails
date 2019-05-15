class AddStringPhoneNumber < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :phone_number, :string
    add_column :customers, :phone_number, :string
  end
end
