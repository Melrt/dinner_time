class RecipesController < ApplicationController
  def search
    # ma route ne correspond pas à mon controller
    # je peux peut etre raccoursir
    ingredients = search_params[:ingredients].lines.map(&:strip).join('%')
    @matching_recipes = Recipe.where("data ->> ? ILIKE ?", 'ingredients', '%' + ingredients + '%')
    # est ce que ca va prendre celle qui corresponde le mieux ?
    render :index
  end

  def index
    
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

private

  def search_params
    params.require(:search).permit(:ingredients)
  end
end
