class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_many :paper_transactions, dependent: :destroy
  validates_presence_of :customer_id, :ordered_on
end
