class CreateProceduralSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :procedural_steps do |t|

      t.timestamps
    end
  end
end
