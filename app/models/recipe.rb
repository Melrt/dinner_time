class Recipe < ApplicationRecord
  store_accessor :data, :title, :cook_time, :prep_time, :ingredients, :ratings, :cuisine, :category, :author, :image
end
