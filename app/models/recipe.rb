class Recipe < ApplicationRecord
  belongs_to :category
  has_many :ingredients
  has_many :procedural_steps
  
  # requires: 
  # title (string, non-empty, unique to all recipes)
  # time_estimate (string, non-empty)
  # description (string, non-empty)
  # ingredients (array)
  # procedural_steps (array)
  # category_id (number)
  # main/side (boolean)
  
  # optional: 
  # equipment (string) // special equipment for things like propane torch that people may not have laying around
end
