class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.integer :kind, null: false

      t.timestamps
    end
  end
end
