class Image < ApplicationRecord
  belongs_to :ingredient
  belongs_to :procedural_step
end
