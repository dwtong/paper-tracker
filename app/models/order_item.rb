class OrderItem < ApplicationRecord
  belongs_to :order, inverse_of: :order_items
  belongs_to :book
  validates_presence_of :quantity, :book_id
end
