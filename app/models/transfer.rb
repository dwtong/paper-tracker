class Transfer < ApplicationRecord
  has_many :paper_transactions, as: :transactable, dependent: :destroy
  # has_many :papers, through: :paper_transactions
  accepts_nested_attributes_for :paper_transactions
  validates_presence_of :transferred_on
end
