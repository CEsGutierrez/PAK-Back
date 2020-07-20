class RecipesController < ApplicationController
  
  
  def index()
  end
  
  def create()

    @recipe = Recipe.new(params[:recipe])

  # if missing procedural steps, or ingredients, return error

  # if category is included, create that first
    # make sure it's in uppercase
    # make sure the name's been stripped

  # recipe.create

  # call in the recipe.id from the newly created recipe to  stand in for the foreign key for ingredients and procedural steps

  # proceduralstep(s).create

  # ingredient(s).create

  # image(s).create

    @recipe.save
  end
  
  def show(recipe_params)
  end
  
  def edit(recipe_params)
  end

  def update(recipe_params)
  end
  
  def destroy(recipe_params)
  end
  
  
  
  
  private
  def recipe_params
    params.require(:recipe).permit(:id, :title, :body, :time_estimate)
  end
  
  
end
