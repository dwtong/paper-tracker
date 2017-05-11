class Paper < ApplicationRecord
  belongs_to :customer
  belongs_to :paper_type
  has_many :paper_transactions
  # has_many :collections, through: :paper_transactions

  # scope :quantity_by_type, -> (name, size, quantity) { joins(:paper_type).find_by(paper_types: {name: name, size: size}).quantity(quantity) }

  def offset_quantity
    paper_transactions.where(ecoloop_stock: false).sum(:quantity)
  end

  def ecoloop_quantity
    paper_transactions.where(ecoloop_stock: true).sum(:quantity)
  end
end
