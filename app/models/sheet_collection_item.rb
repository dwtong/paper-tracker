class SheetCollectionItem < ApplicationRecord
  belongs_to :sheet
  belongs_to :sheet_collection, optional: true
  validates_presence_of :quantity_collected
  after_create :update_sheet_quantity_in_stock

  def update_sheet_quantity_in_stock
    # TODO: handle quantity_in_stock for updates and deletes
    sheet.increment!(:quantity_in_stock, by = quantity_collected)
  end
end
