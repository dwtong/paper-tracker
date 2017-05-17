class RenameOrderedOnToDueOn < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :ordered_on, :due_on
  end
end
