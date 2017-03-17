class PaperCollectionItem < ApplicationRecord
  belongs_to :sheet
  belongs_to :paper_collection, optional: true
  validates_presence_of :quantity_collected
end
