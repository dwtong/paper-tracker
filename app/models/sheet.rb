class Sheet < ApplicationRecord
  belongs_to :customer
  belongs_to :paper_type
  has_many :paper_collection_items
  has_many :paper_collections, through: :paper_collection_items

  scope :quantity_by_type, -> (name, size) { joins(:paper_type).find_by(paper_types: {name: name, size: size}).quantity_in_stock }

  def quantity_in_stock
    paper_collection_items.sum(:quantity_collected)
  end
end
