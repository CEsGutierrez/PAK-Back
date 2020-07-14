require 'test_helper'

class ProceduralStepTest < ActiveSupport::TestCase
  test "valid procedural_step" do
    # makes a new step 
    # total number of steps for that recipe increases
  end
  
  test "invalid: missing or duplicate step_number" do
    # make a new step with everything EXCEPT step_number
    # total number of steps for that recipe does not increase
    
    # get first step for Recipe(1)
    # duplicate name of step, change description
    # total number of steps for that recipe does not increase
  end
  
  test "invalid: missing or duplicate description" do
    # make a new step with everything EXCEPT description
    # total number of steps for that recipe does not increase
    
    # get first step for Recipe(1)
    # duplicate description of step, change name
    # total number of steps for that recipe does not increase
  end
  
  test "the truth" do
    # get Recipe(1) step (1)
    # create new Recipe(2)
    # duplicate step(1) from other recipe except for recipe_id
    # number of steps for Recipe(2) increases
    # number of steps for Recipe(1) does not increase
  end
  
  test "valid: sub_note allowed" do
    # create valid procedural_steps, includes sub_note
    # number of procedural_steps increases
  end
end
