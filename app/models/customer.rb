class Customer < ApplicationRecord
  enum customer_type: { ecolooper: 0, offsetter: 1, buyer: 2 }
  validates_presence_of :name, :customer_type
  has_many :orders
  has_many :papers
  has_many :paper_transactions, through: :papers, as: :transactable
  has_many :collections, -> { distinct }, through: :paper_transactions, source: :transactable, source_type: "Collection"
  has_many :transfers, -> { distinct }, through: :paper_transactions, source: :transactable, source_type: "Transfer"
  after_create :create_papers

  def create_papers
    PaperType.find_each do |paper_type|
      papers.create(paper_type: paper_type)
    end
  end
end
