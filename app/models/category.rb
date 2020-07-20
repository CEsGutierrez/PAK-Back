class Category < ApplicationRecord
  has_many :recipes
  
  validates :name, presence: true, uniqueness: true
  
  
  # requires:
  # name (string) (unique, not capitalization variation on previous category)
  # name will be stripped and capitalized in the controller
end
