class SheetCollectionItem < ApplicationRecord
  belongs_to :sheet
  belongs_to :sheet_collection
end
