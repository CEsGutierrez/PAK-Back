class RecipesController < ApplicationController
  def create(recipe_params)
    Recipe.create(params[:recipe])
  end
  
  def update(recipe_params)
    
    
    
  end
  
  def destroy(recipe_params)
  end
  
  def index()
  end
  
  
  private
  def recipe_params
    params.require(:recipe).permit(:id, :title, :body, :time_estimate)
  end
  
  
end
