class CreatePaperCollectionItems < ActiveRecord::Migration[5.0]
  def change
    create_table :paper_collection_items do |t|
      t.integer :sheet_id, null: false
      t.belongs_to :sheet, index: true

      t.integer :paper_collection_id, null: false
      t.belongs_to :paper_collection, index: true

      t.integer :quantity_collected, null: false, default: 0

      t.timestamps
    end
  end
end
