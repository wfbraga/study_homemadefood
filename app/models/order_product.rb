class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates_associated :order
  validates_associated :product
  validate :quantity, presence: true
end
