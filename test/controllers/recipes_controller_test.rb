require 'test_helper'
# require 'recipes_controller'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  
  @test_recipe_params = {
  title: "I am a test",
  body: "I'm pretty empty for a recipe", 
  time_estimate: "forever"
}


test "should post create" do
  recipe = Recipe.create(@test_recipe_params)
  assert_response :success
end

test "should put update" do
  put recipe_path(:id)
  assert_response :success
end

test "should delete destroy" do
  delete recipe_path(:id)
  assert_response :success
end

test "should get index" do
  get recipes_path
  assert_response :success
  assert_not_nil assigns(:recipes)
  
  
end

end
