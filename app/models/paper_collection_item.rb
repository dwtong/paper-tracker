class PaperCollectionItem < ApplicationRecord
  belongs_to :sheet
  belongs_to :paper_collection, optional: true
  validates_presence_of :quantity_collected

  scope :by_paper_type, -> { includes(sheet: :paper_type).order('paper_types.size, paper_types.name') }
end
