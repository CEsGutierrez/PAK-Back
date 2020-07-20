require 'test_helper'

class ProceduralStepTest < ActiveSupport::TestCase
  test "valid procedural_step" do
    
    assert_equal(10, ProceduralStep.count)
    
    test_step = ProceduralStep.new
    test_step.step_number = "2000"
    test_step.description = "this is a test"
    test_step.recipe_id = Recipe.first.id
    test_step.save 
    assert_equal(11, ProceduralStep.count)
    
    test_step_with_sub = ProceduralStep.new
    test_step_with_sub.step_number = "2001"
    test_step_with_sub.description = "this is a test, also"
    test_step_with_sub.recipe_id = Recipe.first.id
    test_step_with_sub.sub_note = "this is a substitution note"
    test_step_with_sub.save 
    assert_equal(12, ProceduralStep.count)
    
  end
  
  test "invalid: missing or duplicate step_number" do
    assert_no_difference 'ProceduralStep.count' do
      test_step = ProceduralStep.new
      test_step.description = "this is a test"
      test_step.recipe_id = Recipe.first.id
      test_step.save 
    end
    
    step_number = "2020"
    
    # creates a test case
    test_step_org = ProceduralStep.new
    test_step_org.step_number = step_number
    test_step_org.description = "this is a test"
    test_step_org.recipe_id = Recipe.first.id
    test_step_org.save 
    
    # duplicates its step number
    assert_no_difference 'ProceduralStep.count' do
      test_step_dup = ProceduralStep.new
      test_step_dup.step_number = step_number
      test_step_dup.description = "this is also a test"
      test_step_dup.recipe_id = Recipe.first.id
      test_step_dup.save 
    end
  end
  
  test "invalid: missing or duplicate description in the same recipe" do
    assert_no_difference 'ProceduralStep.count' do
      test_step = ProceduralStep.new
      test_step.step_number = "2003"
      test_step.recipe_id = Recipe.first.id
      test_step.save 
    end
    
    # creates a test case
    test_step = ProceduralStep.new
    test_step.step_number = "2004"
    test_step.recipe_id = Recipe.first.id
    test_step.description = "this is the original description"
    test_step.save 
    step_count = ProceduralStep.count
    
    # duplicates its description within the same recipe
    assert_no_difference 'ProceduralStep.count' do
      test_step_dup = ProceduralStep.new
      test_step_dup.step_number = "2005"
      test_step_dup.recipe_id = Recipe.first.id
      test_step_dup.description =test_step.description
      test_step_dup.save 
    end
  end
  
  test "allows duplicate descriptions for steps in different recipes" do
    
    description = "this is the original description"
    # creates a test case
    test_step = ProceduralStep.new
    test_step.step_number = "2006"
    test_step.recipe_id = Recipe.first.id
    test_step.description = description
    test_step.save 
    step_count = ProceduralStep.count
    
    expected_steps = step_count + 1
    
    # creates a step with the same description in a different recipe
    test_step_too = ProceduralStep.new
    test_step_too.step_number = "2008"
    test_step_too.recipe_id = Recipe.last.id
    test_step_too.description = description
    test_step_too.save 
    
    assert_equal(expected_steps, ProceduralStep.count)
    
  end
  
  test "valid: sub_note allowed" do
    
    step_count = ProceduralStep.count
    
    test_step = ProceduralStep.new
    test_step.step_number = "2000"
    test_step.description = "this is a test"
    test_step.sub_note="Heavy cream for sour cream"
    test_step.recipe_id = Recipe.first.id
    test_step.save 
    
    expected_steps = step_count + 1
    
    assert_equal(expected_steps, ProceduralStep.count)
  end
end
