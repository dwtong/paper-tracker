class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, inverse_of: :order, dependent: :destroy
  has_many :paper_transactions, as: :transactable, dependent: :destroy
  validates_presence_of :customer_id, :due_on

  accepts_nested_attributes_for :order_items
end
