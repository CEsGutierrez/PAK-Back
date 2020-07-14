class Ingredient < ApplicationRecord
  belongs_to :recipe


# requires
  # amount
  # unit
  # name (# unique to other ingredients already associated with this recipe)
  # recipe_id (number)

# optional
  # sub note

end
