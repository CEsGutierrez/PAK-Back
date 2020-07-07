class AddDetailsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :title, :string
    add_column :recipes, :time_estimate, :string
    add_column :recipes, :body, :string
  end
end
