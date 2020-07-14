require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  test "valid recipe" do
    # valid title
    # valid time_estimate
    # valid description
    # valid ingredients (array w/ one ingredient)
    # valid procedural_steps(array w/ one procedural step)
    # valid category_id
    # Valid main/side (false)
    # number of recipes increases
  end

  test "invalid: missing or duplicate title " do
    # try to add recipe with everything EXCEPT a title
    # number of recipes doesn't increase 

    # get name of first recipe (yaml)
    # try to add recipe with same name
    # number of recipes doesn't increase 
  end

  test "invalid: missing time_estimate" do
    # try to add recipe with everything EXCEPT a time_estimate
    # number of recipes doesn't increase 
  end

  test "invalid: missing description" do
    # try to add recipe with everything EXCEPT a description
    # number of recipes doesn't increase 
  end

  test "invalid: missing ingredients list" do
    # try to add recipe with everything EXCEPT an ingredients array
    # number of recipes doesn't increase 

    # try to add recipe with empty ingredients array
    # number of recipes doesn't increase
  end

  test "invalid: missing procedural_steps list" do
    # try to add recipe with everything EXCEPT a procedural_steps array
    # number of recipes doesn't increase 

    # try to add recipe with empty procedural_steps array
    # number of recipes doesn't increase
  end

  test "invalid: missing category_id" do
    # try to add recipe with everything EXCEPT a category_id
    # number of recipes doesn't increase 
  end

  test "invalid: missing main/side boolean" do
    # try to add recipe with everything EXCEPT a main/side boolean
    # number of recipes doesn't increase 
  end

  test "valid: with special equipemnt" do
    # try to add recipe with special equipment
    # number of recipes increases 
  end

end
