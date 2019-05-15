class CustomerMeal < ApplicationRecord
  belongs_to :customer
  belongs_to :meal
  belongs_to :order, optional: true

  validates :amount, numericality: { greater_than: 0, only_integer: true}

end
