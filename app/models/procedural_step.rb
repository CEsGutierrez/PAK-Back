class ProceduralStep < ApplicationRecord
  belongs_to :recipe
  has_one :images, as: :imageable
  
  
  validates :description, presence: true, uniqueness: {scope: :recipe_id}
  
  validates :step_number, presence: true, uniqueness: {scope: :recipe_id}
  
end
