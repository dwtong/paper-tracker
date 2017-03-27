class PaperTransaction < ApplicationRecord
  belongs_to :paper
  belongs_to :transactable, polymorphic: true, optional: true
  validates_presence_of :quantity

  scope :by_paper_type, -> { includes(paper: :paper_type).order('paper_types.size, paper_types.name') }
end
