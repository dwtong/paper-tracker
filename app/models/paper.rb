class Paper < ApplicationRecord
  belongs_to :customer
  belongs_to :paper_type
  has_many :paper_transactions
  # has_many :collections, through: :paper_transactions

  scope :quantity_by_type, -> (name, size, quantity) { joins(:paper_type).find_by(paper_types: {name: name, size: size}).quantity(quantity) }

  def quantity(by_type = nil)
    case by_type
    when :ecoloop
      paper_transactions.where(ecoloop_stock: true).sum(:quantity)
    when :offset
      paper_transactions.where(ecoloop_stock: false).sum(:quantity)
    else
      paper_transactions.sum(:quantity)
    end
  end
end
