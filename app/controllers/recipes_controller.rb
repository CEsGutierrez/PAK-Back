class RecipesController < ApplicationController
  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.save
  end
  
  def update(recipe_params)
    
    
    
  end
  
  def destroy(recipe_params)
  end
  
  def index()
  end
  
  
  # private
  # def recipe_params
  #   params.require(:recipe).permit(:id, :title, :body, :time_estimate)
  # end
  
  
end
