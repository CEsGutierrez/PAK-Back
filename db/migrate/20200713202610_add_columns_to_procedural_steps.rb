class AddColumnsToProceduralSteps < ActiveRecord::Migration[6.0]
  def change
    add_reference :procedural_steps, :recipe, foreign_key: true
    add_column :procedural_steps, :sub_note, :string
    add_column :procedural_steps, :step_number, :string
    add_column :procedural_steps, :description, :string
  end
end
