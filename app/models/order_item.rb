class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :book
  validates_presence_of :quantity, :order_id, :book_id
end
