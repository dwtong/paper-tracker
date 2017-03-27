class CreateTransfers < ActiveRecord::Migration[5.0]
  def change
    create_table :transfers do |t|
      t.date :transferred_on, null: false

      t.timestamps
    end
  end
end
