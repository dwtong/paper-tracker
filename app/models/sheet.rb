class Sheet < ApplicationRecord
  belongs_to :customer
  belongs_to :paper_type
  has_many :paper_collection_items
  has_many :paper_collections, through: :paper_collection_items

  def quantity_in_stock
    paper_collection_items.sum(:quantity_collected)
  end
end
