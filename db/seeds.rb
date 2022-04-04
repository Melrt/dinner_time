file = Rails.root.join("public", "recipes-en.json")

puts "Creating Recipes.."

if Recipe.none?
  serialized_recipes = File.read(file)
  recipes            = JSON.parse(serialized_recipes)

  recipes.each do |recipe|
    Recipe.create!(data: recipe)
  end
end

puts "Recipes created !"
