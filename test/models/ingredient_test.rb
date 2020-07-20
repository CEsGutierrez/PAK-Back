require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "valid ingredient" do
    assert_equal(10, Ingredient.count)
    
    expected_ingredients = Ingredient.count + 1
    
    test_ingredient = Ingredient.new
    test_ingredient.amount = "2"
    test_ingredient.unit = "tsp"
    test_ingredient.name = "pepper"
    test_ingredient.recipe_id = Recipe.first.id
    test_ingredient.save
    
    assert_equal(expected_ingredients, Ingredient.count)
    
  end
  
  test "invalid: missing amount" do
    assert_no_difference 'Ingredient.count' do
      test_ingredient = Ingredient.new
      test_ingredient.unit = "tsp"
      test_ingredient.name = "pepper"
      test_ingredient.recipe_id = Recipe.first.id
      test_ingredient.save
    end
  end
  
  test "invalid: missing unit" do
    assert_no_difference 'Ingredient.count' do
      test_ingredient = Ingredient.new
      test_ingredient.amount = "2"
      test_ingredient.name = "pepper"
      test_ingredient.recipe_id = Recipe.first.id
      test_ingredient.save
    end
    
    assert_no_difference 'Ingredient.count' do
      test_ingredient = Ingredient.new
      test_ingredient.amount = "2"
      test_ingredient.unit = ""
      test_ingredient.name = "pepper"
      test_ingredient.recipe_id = Recipe.first.id
      test_ingredient.save
    end
  end
  
  test "invalid: missing name" do
    assert_no_difference 'Ingredient.count' do
      test_ingredient = Ingredient.new
      test_ingredient.amount = "2"
      test_ingredient.unit = "cups"
      test_ingredient.recipe_id = Recipe.first.id
      test_ingredient.save
    end
    
    assert_no_difference 'Ingredient.count' do
      test_ingredient = Ingredient.new
      test_ingredient.amount = "2"
      test_ingredient.unit = "cups"
      test_ingredient.name = ""
      test_ingredient.recipe_id = Recipe.first.id
      test_ingredient.save
    end
  end
  
  test "invalid: duplicate name for recipe" do
    test_ingredient = Ingredient.new
    test_ingredient.amount = "2"
    test_ingredient.unit = "tsp"
    test_ingredient.name = "pepper"
    test_ingredient.recipe_id = Recipe.first.id
    test_ingredient.save
    
    assert_no_difference 'Ingredient.count' do
      test_ingredient = Ingredient.new
      test_ingredient.amount = "2"
      test_ingredient.unit = "tsp"
      test_ingredient.name = "pepper"
      test_ingredient.recipe_id = Recipe.first.id
      test_ingredient.save
    end
    
  end
  
  test "valid: duplicate ingredient to other recipe is allowed" do
    
    duplicate_name = "ice water"
    
    org_ingredient = Ingredient.new
    org_ingredient.amount = "5"
    org_ingredient.unit = "tsp"
    org_ingredient.name = duplicate_name
    org_ingredient.recipe_id = Recipe.first.id
    org_ingredient.save
    
    current_ingredients = Ingredient.count
    
    expected_ingredients = current_ingredients + 1
    
    test_ingredient = Ingredient.new
    test_ingredient.amount = "2"
    test_ingredient.unit = "tsp"
    test_ingredient.name = duplicate_name
    test_ingredient.recipe_id = Recipe.last.id
    test_ingredient.save
    assert_equal(expected_ingredients, Ingredient.count)
  end
  
  
  test "valid: sub_note allowed" do
    current_ingredients = Ingredient.count
    expected_ingredients = current_ingredients + 1
    
    test_ingredient = Ingredient.new
    test_ingredient.amount = "2"
    test_ingredient.unit = "tsp"
    test_ingredient.name = "black pepper"
    test_ingredient.recipe_id = Recipe.first.id
    test_ingredient.sub_note = "1 tsp white pepper"
    test_ingredient.save
    
    assert_equal(expected_ingredients, Ingredient.count)
    
  end
end
