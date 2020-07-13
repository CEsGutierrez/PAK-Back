class AddColumnsToImages < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :ingredient, foreign_key: true
    add_reference :images, :procedural_step, foreign_key: true
    add_column :images, :display_name, :string
  end
end
