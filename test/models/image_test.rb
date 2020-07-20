require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  
  test "valid image for step" do
    
    assert_equal(4, Image.count)
    
    test_image = Image.new
    test_image.procedural_step_id = ProceduralStep.last.id
    test_image.ingredient_id = Ingredient.last.id
    test_image.display_name = "this is a mystery"
    test_image.save
    
    assert_equal(5, Image.count)
    
    test_image_too = Image.new
    test_image_too.ingredient_id = Ingredient.last.id
    test_image_too.display_name = "this is a mystery"
    test_image_too.save
    
    assert_equal(6, Image.count)
  end
  
  test "valid image for ingredient" do
    # assign image to recipe 1, ingredient 1
    # count increases
  end
  
  
  test "invalid image, step or ingredient missing" do
    # add image with missing step
    # count doesn't change
    
    # add image with missing ingredient
    # count doens't change
  end
  
  test "invalid image, duplicate name in same recipe" do
  end
  
  test "valid image, duplicate name in different recipe" do
  end
  
  
end
