require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  test "adds valid categories" do
    assert_equal(4, Category.count)
    
    test_cat = Category.new
    test_cat.name = "I am a totally new category"
    test_cat.save
    assert_equal(5, Category.count)
    
  end
  
  test "invalid names" do
    
    # category needs a name
    assert_no_difference 'Category.count' do
      test_category = Category.create
    end
    
    
    # category name must be unique
    assert_no_difference 'Category.count' do
      test_cat_2 = Category.new
      test_cat_2.name = Category.first.name
      test_cat_2.save
    end  
  end
  
end
