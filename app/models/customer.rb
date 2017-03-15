class Customer < ApplicationRecord
  enum kind: [ :ecolooper, :offsetter, :buyer ]
  validates_presence_of :name
  has_many :sheets
end
