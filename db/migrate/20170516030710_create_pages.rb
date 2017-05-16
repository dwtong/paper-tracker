class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.belongs_to :paper_type, index: true
      t.belongs_to :book, index: true
      t.integer :quantity
      t.timestamps
    end
  end
end
