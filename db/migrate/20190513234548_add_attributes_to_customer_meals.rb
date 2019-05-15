class AddAttributesToCustomerMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :customer_meals, :customer_id, :integer
    add_column :customer_meals, :meal_id, :integer
    add_column :customer_meals, :is_purchased, :boolean
    add_column :customer_meals, :is_removed, :boolean
    add_column :customer_meals, :mount, :integer
    add_column :customer_meals, :order_id, :integer
  end
end
