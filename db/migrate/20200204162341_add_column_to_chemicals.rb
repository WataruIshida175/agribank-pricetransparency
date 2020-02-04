class AddColumnToChemicals < ActiveRecord::Migration[5.2]
  def change
    add_column :chemicals, :chemical_id, :int
    add_column :chemicals, :chemical_type, :string
    add_column :chemicals, :chemical_name, :string
    add_column :chemicals, :chemical_formal_name, :string
    add_column :chemicals, :how_to_use, :string
    add_column :chemicals, :dosage_form_name, :string
    add_column :chemicals, :registration_date, :date
  end
end
