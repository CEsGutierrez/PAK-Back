class AddColumnsToRecipes < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :body, :description
    add_column :recipes, :main, :boolean
    add_reference :recipes, :category, foreign_key: true
  end
end
