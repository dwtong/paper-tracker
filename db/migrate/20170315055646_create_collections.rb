class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.date :collected_on, null: false

      t.timestamps
    end
  end
end
