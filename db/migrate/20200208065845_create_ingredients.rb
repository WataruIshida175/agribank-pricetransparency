class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.integer :chemical_id
      t.string :ingredient
      t.string :main_ingredient
      t.string :concentration
      t.integer :mixed_num
    end
  end
end
