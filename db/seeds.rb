filepath = "recipes-en.json"
file = Rails.root.join("public", filepath)
serialized_recipes = File.read(file)
recipes = JSON.parse(serialized_recipes)

puts "Creating Recipes.."

recipes.each do |recipe|
  Recipe.create!(data: recipe)
end

puts "Recipes created"
