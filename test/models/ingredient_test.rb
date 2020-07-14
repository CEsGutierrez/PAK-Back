require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "valid ingredient" do
    # create a valid ingredient
    # number of ingredients for that recipe increases
  end

  test "invalid: missing amount" do
    # create ingredient with everything EXCEPT amount
    # number of ingredients for that recipe stays the same
  end

  test "invalid: missing unit" do
    # create ingredient with everything EXCEPT unit
    # number of ingredients for that recipe stays the same
  end

  test "invalid: missing name" do
    # create ingredient with everything EXCEPT name
    # number of ingredients for that recipe stays the same
  end

  test "invalid: missing recipe_id" do
    # create ingredient with everything EXCEPT recipe_id
    # total number of ingredients stays the same
  end

  test "invalid: duplicate name for recipe" do
    # get name of first ingredient for first recipe
    # add duplicate ingredient to first recipe
    # number of ingredients for that recipe stays the same
  end

  test "valid: duplicate ingredient to other recipe is allowed" do
    # create new recipe (1)
    # create new ingredient for recipe
    # create new recipe (2) with new name
    # duplicate ingredient from recipe (1)
    # number of ingredients for recipe (2) increases
  end


  test "valid: sub_note allowed" do
    # create valid ingredient, includes sub_note
    # number of ingredients increases
  end
end
