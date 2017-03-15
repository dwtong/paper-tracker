class CreateSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :sheets do |t|
      t.integer :customer_id
      t.integer :paper_type_id, null: false
      t.integer :quantity_in_stock, null: false

      t.timestamps
    end
  end
end
