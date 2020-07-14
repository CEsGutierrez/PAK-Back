class Category < ApplicationRecord
  has_many :recipes
  
  # requires:
  # name (string) (unique, not capitalization variation on previous category)
end
