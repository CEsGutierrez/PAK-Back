require 'test_helper'
# require 'recipes_controller'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  
  
  # tests routes
  
  test "should get index" do
    assert_generates '/recipes', {controller: 'recipes', action: 'index'}
  end
  
  test "should post create" do
    assert_recognizes({controller: 'recipes', action: 'create'}, {path: 'recipe', method: :post})
  end
  
  test "should show recipe" do
    assert_generates '/recipe/id', {controller: 'recipes', action: 'show'}
  end
  
  test "should get single recipe" do
    assert_generates '/recipe/id', {controller: 'recipes', action: 'edit'}
  end
  
  
  test "should put update" do
    assert_recognizes({controller: 'recipes', action: 'update'}, {path: 'recipe/id', method: :put})
  end
  
  test "should delete destroy" do
    assert_recognizes({controller: 'recipes', action: 'destroy'}, {path: 'recipe/id', method: :delete})
  end
  
  
  
  
  
  
  
  
end
