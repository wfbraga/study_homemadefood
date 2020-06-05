class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :total_value, presence: true

  enum status: { waiting: 0, departed: 1, delivered: 2 }
end
