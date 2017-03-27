class CreatePaperTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :paper_transactions do |t|
      t.integer :paper_id, null: false
      t.integer :quantity, null: false, default: 0
      t.integer :stock_type, null: false

      t.belongs_to :paper, index: true
      t.references :transactable, polymorphic: true, index: { name: 'by_transactable_type_and_id' }

      t.timestamps
    end
  end
end
