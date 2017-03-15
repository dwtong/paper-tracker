class CreateSheetCollectionItems < ActiveRecord::Migration[5.0]
  def change
    create_table :sheet_collection_items do |t|
      t.integer :sheet_id, null: false
      t.integer :sheet_collection_id, null: false
      t.integer :quantity_collected, null: false

      t.timestamps
    end
  end
end
