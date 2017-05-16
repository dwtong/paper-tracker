class Page < ApplicationRecord
  belongs_to :book
  belongs_to :paper_type
  validates_presence_of :quantity, :book_id, :paper_type_id
end
