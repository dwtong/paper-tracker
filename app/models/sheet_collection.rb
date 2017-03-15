class SheetCollection < ApplicationRecord
  has_many :sheet_collection_items
  has_many :sheets, through: :sheet_collection_items
  accepts_nested_attributes_for :sheets
end
