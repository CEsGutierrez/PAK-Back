class ProceduralStep < ApplicationRecord
  belongs_to :recipe
  
  validates :description, presence: true, uniqueness: {scope: :recipe_id}
  
  validates :step_number, presence: true, uniqueness: {scope: :recipe_id}
  
end
