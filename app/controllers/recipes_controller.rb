class RecipesController < ApplicationController
  
  
  def index()
  end
  
  
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
