class CustomerMeal < ApplicationRecord
  belongs_to :customer
  belongs_to :meal
  belongs_to :order, optional: true
end
