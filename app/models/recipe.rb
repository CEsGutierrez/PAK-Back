class Recipe < ApplicationRecord
  belongs_to :category
  has_many :ingredients
  has_many :procedural_steps
  
  validates :title, presence: true, uniqueness: true
  validates :time_estimate, presence: true
  validates :description, presence: true
  
  validates_inclusion_of :main, in:[true, false]
  
  
  # category_id validation is not necessary as it is already required a foreign key
  
  # equipment validation skipped as is not actually necessary and this element is optional
end