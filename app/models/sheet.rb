class Sheet < ApplicationRecord
  belongs_to :customer
  belongs_to :paper_type
  has_many :sheet_collection_items
  has_many :sheet_collections, through: :sheet_collection_items
end
