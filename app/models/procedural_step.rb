class ProceduralStep < ApplicationRecord
  belongs_to :recipe

# requires
  # step_number (string) (unique to other procedural steps associated with this recipe)
  # description (string) (unique to other procedural steps associated with this recipe)
  # recipe_id (number)

# optional
  # sub note

end
