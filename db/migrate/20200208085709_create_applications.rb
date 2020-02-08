class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.integer :chemical_id
      t.string :crop
    end
  end
end
