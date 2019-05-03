class CreateCustomerMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_meals do |t|

      t.timestamps
    end
  end
end
