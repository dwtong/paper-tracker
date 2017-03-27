class PaperType < ApplicationRecord
  has_many :papers
  validates_uniqueness_of :name, scope: :size

  def label
    "#{name.titleize} #{size.capitalize}"
  end
end
