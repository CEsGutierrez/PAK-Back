require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  
  test "valid image for step" do
    test_image = Image.new
    




    # assign image to recipe 1, step 1
    # count increases
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
