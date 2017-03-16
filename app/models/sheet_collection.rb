class SheetCollection < ApplicationRecord
  has_many :sheet_collection_items, dependent: :destroy
  has_many :sheets, through: :sheet_collection_items
  accepts_nested_attributes_for :sheet_collection_items
  validates_presence_of :date_collected
end
