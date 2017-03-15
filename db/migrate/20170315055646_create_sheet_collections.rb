class CreateSheetCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :sheet_collections do |t|
      t.datetime :date_collected, null: false

      t.timestamps
    end
  end
end
