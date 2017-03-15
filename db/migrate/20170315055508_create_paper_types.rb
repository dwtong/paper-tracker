class CreatePaperTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :paper_types do |t|
      t.string :name, null: false
      t.string :size, null: false
      t.timestamps
    end

    add_index :paper_types, [:name, :size], unique: true
  end
end
