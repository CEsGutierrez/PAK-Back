class Recipe < ApplicationRecord
  belongs_to :category
  has_many :ingredients
  has_many :procedural_steps
end
