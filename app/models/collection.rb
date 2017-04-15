class Collection < ApplicationRecord
  has_many :paper_transactions, as: :transactable, dependent: :destroy
  accepts_nested_attributes_for :paper_transactions, reject_if: :nil_quantity, allow_destroy: true
  validates_presence_of :collected_on, :paper_transactions

  def customer
    paper_transactions.first.customer
  end

  def nil_quantity(transaction)
    transaction['quantity'].nil? || transaction['quantity'].to_i.zero?
  end
end
