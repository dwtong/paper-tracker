class SheetCollectionItem < ApplicationRecord
  belongs_to :sheet
  belongs_to :sheet_collection, optional: true
  validates_presence_of :quantity_collected
end
