class RemoveTimeFromChemicals < ActiveRecord::Migration[5.2]
  def change
    remove_column :chemicals, :created_at, :datetime
    remove_column :chemicals, :updated_at, :datetime
  end
end
