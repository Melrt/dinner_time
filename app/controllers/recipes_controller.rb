class RecipesController < ApplicationController
  def search
    raise
    @results = Recipe.where("data ->> ? ILIKE ?", search_params[:field], '%' + search_params[:value] + '%')
    # Recipe.where("data ->> ? ILIKE ?", "ingredients", '%' + "flour" + '%') => 4.4ms
    # Recipe.where("data ->> ? ILIKE ?", "ingredients", '%' + "flour" + '%' + "sugar" + '%')
    # j'ai que à séparer mes ingredients de recherche par des %
    # render @results.present? ? 'index' : 'no_results'
    # ne pas oublier les strong params
    # limit 5
    # est ce que ca va prendre celle qui corresponde le mieux ?
  end

private

  def search_params
    params.require(:search).permit :field, :value
  end
end
