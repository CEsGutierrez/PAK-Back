class Ingredient < ApplicationRecord
  belongs_to :recipe
  has_one :images, as: :imageable
  
  validates :name, presence: true, uniqueness: {scope: :recipe_id}
  validates :amount, presence: true
  validates :unit, presence: true
  
  # optional
  # sub note
  
end
