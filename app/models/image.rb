class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true


  
# requires:
# EITHER ingredient_id OR procedural_step_id
# display_name (string, unique from other names associated with this recipe)

end
