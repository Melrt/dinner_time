FactoryBot.define do
  factory :recipe do
    title { 'Golden Sweet Cornbread' }
    cook_time { 25 }
    prep_time { 10 }
    ingredients { ["1 cup all-purpose flour", "1 cup yellow cornmeal", "⅔ cup white sugar", "1 teaspoon salt", "3 ½ teaspoons baking powder", "1 egg", "1 cup milk", "⅓ cup vegetable oil"] }
  end
end
