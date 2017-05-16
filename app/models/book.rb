class Book < ApplicationRecord
  has_many :pages
  has_many :order_items
end
