class AddAmountToCustomerMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :customer_meals, :amount, :integer
  end
end
