class User
    attr_accessor :ingredient
    @@all = []
    def initialize
        @@all << self
    end
    def self.all
        @@all 
    end
    def recipes 
        Recipe.all.select {|recipe| recipe.user == self}
    end
    def add_recipe_card(date,rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end
    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end
    def allergens
       allergyArray =  Allergy.all.select {|allergy| allergy.user == self}
    
    end

end