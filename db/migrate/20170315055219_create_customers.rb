class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.integer :customer_type, null: false

      t.timestamps
    end
  end
end
