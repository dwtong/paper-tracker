class Book < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :order_items
end
