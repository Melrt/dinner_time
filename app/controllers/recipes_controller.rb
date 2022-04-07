class RecipesController < ApplicationController
  decorates_assigned :recipe
  
  def search
    ingredients       = search_params[:ingredients].split.join('%')
    @matching_recipes = search_matching_recipes(ingredients)

    flash.now[:notice] = "No recipe found, try with other ingredients !" unless @matching_recipes.any? 
    render :index
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:ingredients)
  end

  def search_matching_recipes(ingredients)
    Recipe.where("data ->> ? ILIKE ?", 'ingredients', '%' + ingredients + '%')
  end
end
