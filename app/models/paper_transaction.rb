class PaperTransaction < ApplicationRecord
  belongs_to :paper
  delegate :paper_type, to: :paper
  belongs_to :transactable, polymorphic: true, optional: true
  validates_presence_of :quantity
end
