require_relative '../config/environment.rb'


joey = User.new()
gene = User.new()
salt = Ingredient.new()
pepper = Ingredient.new()
cassarole = Recipe.new()
recipe1 = RecipeIngredient.new(pepper, cassarole)
seafood = Allergy.new("Shellfish", joey)
lactose = Allergy.new("Milk", joey)


binding.pry
