class PaperType < ApplicationRecord
  has_many :pages
  has_many :papers
  has_many :paper_transactions, through: :papers
  validates_uniqueness_of :name, scope: :size

  def label
    "#{name.titleize} #{size.capitalize}"
  end
end
