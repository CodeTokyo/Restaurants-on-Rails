class Order < ApplicationRecord
  belongs_to :customer
  has_many :customer_meals

  def total
    sum = 0

  customer_meals.each do |customer_meal|
   sum += customer_meal.meal[:price]
  end

   "$%.2f" % (sum / 100.00)
  end
end
