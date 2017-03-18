class Customer < ApplicationRecord
  enum kind: [ :ecolooper, :offsetter, :buyer ]
  validates_presence_of :name
  has_many :sheets
  has_many :paper_collection_items, through: :sheets
  has_many :paper_collections, -> { distinct }, through: :paper_collection_items
  after_create :create_sheets

  def create_sheets
    PaperType.find_each do |paper_type|
      sheets.create(paper_type: paper_type)
    end
  end
end
