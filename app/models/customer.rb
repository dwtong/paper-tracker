class Customer < ApplicationRecord
  enum kind: [ :ecolooper, :offsetter, :buyer ]
  validates_presence_of :name
  has_many :sheets
  has_many :sheet_collection_items, through: :sheets
  has_many :sheet_collections, through: :sheet_collection_items
end
