class Recipe 
    attr_accessor :user, :ingredient
    @@all = []
    def initialize
        @ingredients = []
        @@all << self
    end

    def self.all
        @@all
    end
    def users
        RecipeCard.all.select {|recipecard| recipecard.user == self}
    end

    def ingredients
        RecipeIngredient.all.select {|recipes|  recipes.ingredient == self}
    end

    def add_ingredients
        @ingredients << Ingredient.all.select {|ingredient|ingredient.recipe == self}
    end
end