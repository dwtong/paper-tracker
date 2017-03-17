class PaperType < ApplicationRecord
  has_many :sheets
  validates_uniqueness_of :name, scope: :size
  enum size: [:a4, :a3]

  def label
    "#{name.titleize} #{size.capitalize}"
  end
end
