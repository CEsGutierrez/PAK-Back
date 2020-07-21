require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  
  def setUp()
    @test_cat = Category.new
    @test_cat.name = "test category"
    @test_cat.save
    
    @test_recipe = Recipe.new
    @test_recipe.title = "test recipe"
    @test_recipe.time_estimate = "0 min"
    @test_recipe.description = "testing"
    @test_recipe.main = false
    @test_recipe.category_id = @test_cat.id
    @test_recipe.save
    
    @test_step = ProceduralStep.new
    @test_step.step_number = "2000"
    @test_step.description = "this is a test"
    @test_step.recipe_id = @test_recipe.id
    @test_step.save 
    
    @test_ingredient = Ingredient.new
    @test_ingredient.amount = "2"
    @test_ingredient.unit = "tsp"
    @test_ingredient.name = "pepper"
    @test_ingredient.recipe_id = @test_recipe.id
    @test_ingredient.save
    
    @test_recipe_2 = Recipe.new
    @test_recipe_2.title = "test recipe also"
    @test_recipe_2.time_estimate = "0 min"
    @test_recipe_2.description = "testing still"
    @test_recipe_2.main = false
    @test_recipe_2.category_id = @test_cat.id
    @test_recipe_2.save
    
  end
  
  test "valid image" do  
    setUp()
    test_image = Image.new
    test_image.procedural_step_id = @test_step.id
    test_image.ingredient_id = @test_ingredient.id
    test_image.display_name = "this is a mystery"
    test_image.save    
    assert_equal(1, Image.count)
  end
  
  test "invalid image, step or ingredient missing" do
    setUp()
    assert_no_difference 'Image.count' do
      test_image = Image.new
      test_image.ingredient_id = @test_ingredient.id
      test_image.display_name = "this is a mystery too"
      test_image.save   
    end 
    assert_no_difference 'Image.count' do
      test_image = Image.new
      test_image.procedural_step_id = @test_step.id
      test_image.display_name = "this is a mystery as well"
      test_image.save   
    end 
  end
  
  test "invalid image, missing display_name" do
    setUp()
    assert_no_difference 'Image.count' do
      test_image = Image.new
      test_image.procedural_step_id = @test_step.id
      test_image.ingredient_id = @test_ingredient.id
      test_image.save  
    end
    
    assert_no_difference 'Image.count' do
      test_image = Image.new
      test_image.procedural_step_id = @test_step.id
      test_image.ingredient_id = @test_ingredient.id
      test_image.display_name = ""
      test_image.save  
    end
    
  end
  
  # due to the strong suspicion that images is going to change dramatically based on the form, at the moment, duplicity is not being checked for image names and they currently require both an ingredient ID and a procedural step ID
  
  # as the needs for the model change, tests will be updated
  
end
