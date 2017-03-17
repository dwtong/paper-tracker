class PaperType < ApplicationRecord
  has_many :sheets
  validates_uniqueness_of :name, scope: :size
end