class RemoveQuantityInStockFromSheets < ActiveRecord::Migration[5.0]
  def change
    remove_column :sheets, :quantity_in_stock
  end
end
