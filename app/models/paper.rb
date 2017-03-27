class Paper < ApplicationRecord
  belongs_to :customer
  belongs_to :paper_type
  has_many :paper_transactions
  # has_many :collections, through: :paper_transactions

  scope :quantity_by_type, -> (name, size) { joins(:paper_type).find_by(paper_types: {name: name, size: size}).quantity_in_stock }

  def quantity_in_stock
    paper_transactions.sum(:quantity)
  end
end
