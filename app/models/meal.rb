class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :customer_meals
  has_many :customers, through: :customer_meals
end
