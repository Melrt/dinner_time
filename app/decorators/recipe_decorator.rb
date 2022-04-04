class RecipeDecorator < ::ApplicationDecorator
  delegate_all

  def human_duration
    "#{cook_time + prep_time} min"
  end
end
