class Collection < ApplicationRecord
  has_many :paper_transactions, as: :transactable, dependent: :destroy
  # has_many :papers, through: :paper_transactions
  accepts_nested_attributes_for :paper_transactions, reject_if: :nil_quantity, allow_destroy: true
  validates_presence_of :collected_on

  def nil_quantity(transaction)
    transaction['quantity'].nil? || transaction['quantity'].to_i.zero?
  end
end
