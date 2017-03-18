class CreateSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :sheets do |t|
      t.integer :customer_id, null: false
      t.belongs_to :customer, index: true

      t.integer :paper_type_id, null: false
      t.belongs_to :paper_type, index: true

      t.timestamps
    end
  end
end
