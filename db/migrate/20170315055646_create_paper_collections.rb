class CreatePaperCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :paper_collections do |t|
      t.datetime :date_collected, null: false

      t.timestamps
    end
  end
end
