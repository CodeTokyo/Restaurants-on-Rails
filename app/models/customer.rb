class Customer < ApplicationRecord
has_many :customer_meals
has_many :meals, through: :customer_meals
has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def customer_meals_in_cart
    customer_meals.where(is_removed: false, is_purchased: false)
  end

  def total_in_cart
    sum = 0

    customer_meals_in_cart.each do |customer_meal|
     sum += customer_meal.meal.price * customer_meal.amount
    end

    "$%.2f" % (sum / 100.00)
  end
end
