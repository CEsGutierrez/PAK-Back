# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create category
# recipe.new
# category (@category equiv)
# main (bool)
# ingredients = []

# create 2 incredients, associate with (@recipe equiv)
# create 2 procedural steps, associate with (@recipe equiv)

#@recipe.save


category = Category.create(
  name: "Peanut Butter Cookies"
)

recipe = Recipe.create(
  title: "Test Recipe 1",
  time_estimate: "30 min",
  description: "Peanut butter cookies!", 
  main: true,
  category: Category.first
)

ingredient1 = Ingredient.create(
  amount: "1", 
  unit: "cup", 
  name: "sugar", 
  recipe_id: Recipe.find_by(title: "Test Recipe 1").id
)

ingredient2 = Ingredient.new
ingredient2.recipe_id = recipe.id
ingredient2.amount = "1"
ingredient2.unit = "ea"
ingredient2.name = "egg"
ingredient2.save

ingredient3 = Ingredient.new
ingredient3.recipe_id = recipe.id
ingredient3.amount = "1"
ingredient3.unit = "cup"
ingredient3.name = "peanut butter"
ingredient3.save

procedural_step1 = ProceduralStep.new
procedural_step1.recipe_id = recipe.id
procedural_step1.step_number = "0"
procedural_step1.sub_note= "because there is a delay in recipe later"
procedural_step1.description = "do not preheat oven, turn on at step 1"
procedural_step1.save

procedural_step2 = ProceduralStep.new
procedural_step2.recipe_id = recipe.id
procedural_step2.step_number = "1"
procedural_step2.description = "Turn on oven to 325 F."
procedural_step2.save

procedural_step3 = ProceduralStep.new
procedural_step3.recipe_id = recipe.id
procedural_step3.step_number = "2"
procedural_step3.description = "Mix egg and sugar together in bowl. Set sit until slightly foamy."
procedural_step3.save

procedural_step4 = ProceduralStep.new
procedural_step4.recipe_id = recipe.id
procedural_step4.step_number = "3"
procedural_step4.description = "Add peanut butter to mix."
procedural_step4.save

procedural_step5 = ProceduralStep.new
procedural_step5.recipe_id = recipe.id
procedural_step5.step_number = "4"
procedural_step5.description = "Allow to sit until mixture hardens slightly. If it sticks onto fingers when handled, allow to sit longer. Time estimate: 10 min. While waiting, proceed to next step."
procedural_step5.save

procedural_step6 = ProceduralStep.new
procedural_step6.recipe_id = recipe.id
procedural_step6.step_number = "5"
procedural_step6.description = "Break chocolate into approximate 1/5 inch pieces, set aside."
procedural_step6.save

procedural_step7 = ProceduralStep.new
procedural_step7.recipe_id = recipe.id
procedural_step7.step_number = "6"
procedural_step7.description = "Form dough into balls, about 1 inch in diameter and set on cookie sheet."
procedural_step7.sub_note = "Slightly smaller than golf ball. They will not spread in the oven so 1 inch apart is okay."
procedural_step7.save

procedural_step8 = ProceduralStep.new
procedural_step8.recipe_id = recipe.id
procedural_step8.step_number = "7"
procedural_step8.description = "Press chocolate into dough, squashing until they about 1/2 inch tall."
procedural_step8.save

procedural_step9 = ProceduralStep.new
procedural_step9.recipe_id = recipe.id
procedural_step9.step_number = "8"
procedural_step9.description = "Bake for 9-12 minutes."
procedural_step9.sub_note = "Check every 2 minutes until surface is no longer shiny. Refer to image."
procedural_step9.save

procedural_step10 = ProceduralStep.new
procedural_step10.recipe_id = recipe.id
procedural_step10.step_number = "9"
procedural_step10.description = "Remove from oven and allow to cool on the sheet."
procedural_step10.sub_note = "When cool enough to move on the sheet, okay to remove. Enjoy!"
procedural_step10.save

image1 = Image.new
image1.ingredient_id = ingredient3.id
image1.display_name = "measure peanut butter"
image1.save

image1 = Image.new
image1.procedural_step_id = procedural_step8.id
image1.display_name = "before, after chocolate"
image1.save