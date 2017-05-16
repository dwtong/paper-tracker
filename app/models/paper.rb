class Paper < ApplicationRecord
  belongs_to :customer
  belongs_to :paper_type
  has_many :paper_transactions, dependent: :destroy
  # has_many :collections, through: :paper_transactions

  scope :offset_by_type, -> (name, size) { joins(:paper_type).find_by(paper_types: {name: name, size: size}).offset_quantity }
  scope :ecoloop_by_type, -> (name, size) { joins(:paper_type).find_by(paper_types: {name: name, size: size}).ecoloop_quantity }
  scope :excluding_rejects, -> { joins(:paper_type).where.not(paper_types: { name: 'reject' }) }

  def ecoloop_quantity
    paper_transactions.where(ecoloop_stock: true).sum(:quantity)
  end

  def offset_quantity
    paper_transactions.where(ecoloop_stock: false).sum(:quantity)
  end
end
