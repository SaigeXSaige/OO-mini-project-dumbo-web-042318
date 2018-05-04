require_relative '../config/environment.rb'



tara = User.new("Tara")
cupcake = Recipe.new("Cupcake")
tara.add_recipe_card(cupcake, "today", 5)
tara.recipes

list = []
list << flour = Ingredient.new("Flour")
list << suger = Ingredient.new("Sugar")

cupcake.add_ingredients(list)
cupcake.ingredients

binding.pry
true
