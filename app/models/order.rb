class Order < ApplicationRecord
  belongs_to :customer
  has_many :paper_transactions, :order_items
  validates_presence_of :customer_id, :ordered_on
end
