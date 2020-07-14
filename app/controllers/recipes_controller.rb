class RecipesController < ApplicationController
  
  
  def index()
  end
  
    # aside: 
  # if category name isn't in uppercase (for some reason) change it to upercase before saving it if that's at all possible 
  def create()
    @recipe = Recipe.new(params[:recipe])
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
