require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get recipes_add_url
    assert_response :success
  end

  test "should get edit" do
    get recipes_edit_url
    assert_response :success
  end

  test "should get delete" do
    get recipes_delete_url
    assert_response :success
  end

end
