require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  test "valid image" do
    # get recipe 1
    
    # create new image with ingredient_id and no procedural_step_id
    # also has unique display_name
    # number of images associated with recipe increases
    
    # create new image with procedural_step_id and no ingredient_id
    # also has unique display_name
    # number of images associated with recipe increases
    
  end
  
  test "invalid: association is missing" do
    # create new image without procedural_step_id or ingredient_id
    # has unique display_name
    # number of images associated with recipe stays the same
  end
  
  test "invalid: missing or duplicate display name" do
    # create valid image associated to an ingredient_id
    # create image with same name associated with same recipe but with procedural_step_id and duplicate the first ingredient's name
    ##### INVALID: SAME RECIPE, DIFFERENT ASSOCIATION, SAME NAME 
    # number of images associated with recipe stays the same
    
    #  try to create recipe without display name
    #  number of images associated with recipe stays the same
  end
  
end
