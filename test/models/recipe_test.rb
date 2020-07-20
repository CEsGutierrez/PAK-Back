require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  
  #TODO: tests are not able to access method in test file, test_helper, setup method, or instance creation. For the moment, I am setting this aside. 
  
  test "valid recipe" do
    assert_equal(6, Recipe.count)
    
    test_recipe = Recipe.new
    test_recipe.title = "safron rice"
    test_recipe.time_estimate = "30 min"
    test_recipe.description = "safron rice"
    test_recipe.main = false
    test_recipe.category_id = Category.first.id
    test_recipe.save
    
    assert_equal(7, Recipe.count)
  end
  
  test "invalid: missing or duplicate title " do
    
    test_recipe = Recipe.new
    test_recipe.time_estimate = "30 min"
    test_recipe.description = "safron rice"
    test_recipe.main = false
    test_recipe.category_id = Category.first.id
    
    assert_no_difference 'Recipe.count' do
      test_recipe.save
    end
    
    assert_no_difference 'Recipe.count' do
      test_recipe.title = Recipe.first.title
      test_recipe.save
    end
  end
  
  test "invalid: missing time_estimate" do
    assert_no_difference 'Recipe.count' do
      test_recipe = Recipe.new
      test_recipe.title = "safron rice"
      test_recipe.description = "safron rice"
      test_recipe.main = false
      test_recipe.category_id = Category.first.id
      test_recipe.save
    end
  end
  
  test "invalid: missing description" do
    assert_no_difference 'Recipe.count' do
      test_recipe = Recipe.new
      test_recipe.time_estimate = "30 min"
      test_recipe.title = "safron rice"
      test_recipe.description = ""
      test_recipe.main = false
      test_recipe.category_id = Category.first.id
      test_recipe.save
    end
  end
  
  test "invalid: missing main/side boolean" do
    test_recipe = Recipe.new
    test_recipe.title = "safron rice"
    test_recipe.time_estimate = "30 min"
    test_recipe.description = "safron rice"
    test_recipe.category_id = Category.first.id
    
    assert_no_difference 'Recipe.count' do
      test_recipe.save
    end
    
    assert_no_difference 'Recipe.count' do
      test_recipe.main = nil
      test_recipe.save
    end
    
  end
  
  test "valid: with special equipemnt" do
    test_recipe = Recipe.new
    test_recipe.title = "safron rice"
    test_recipe.time_estimate = "30 min"
    test_recipe.description = "safron rice"
    test_recipe.category_id = Category.first.id
    test_recipe.main = true
    test_recipe.equipment = "hand mixer"
    
    test_recipe.save
    assert_equal(7, Recipe.count)
  end
end