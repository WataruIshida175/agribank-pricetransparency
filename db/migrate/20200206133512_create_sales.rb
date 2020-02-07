class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :chemical_id
      t.integer :agribank_price
      t.string :unit

    end
  end
end
