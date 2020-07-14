class AddEquipmentToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :equipment, :string
  end
end
