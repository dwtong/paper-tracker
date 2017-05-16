class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.date :ordered_on, null: false
      t.belongs_to :customer, index: true
      t.timestamps
    end
  end
end
