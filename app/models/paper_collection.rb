class PaperCollection < ApplicationRecord
  has_many :paper_collection_items, dependent: :destroy
  has_many :sheets, through: :paper_collection_items
  accepts_nested_attributes_for :paper_collection_items
  validates_presence_of :date_collected
end
