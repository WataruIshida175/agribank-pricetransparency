class RemoveNameFromChemicals < ActiveRecord::Migration[5.2]
  def change
    remove_column :chemicals, :content, :string
  end
end
