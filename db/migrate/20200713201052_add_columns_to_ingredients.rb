class AddColumnsToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :recipe, foreign_key: true
    add_column :ingredients, :amount, :string
    add_column :ingredients, :unit, :string
    add_column :ingredients, :name, :string
    add_column :ingredients, :sub_note, :string
  end
end
