class Recipe 

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        # should return all of the recipe instances
        @@all
    end

    def self.most_popular
        # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    end

    def users
        # should return the user instances who have recipe cards with this recipe
    end

    def ingredients
        # should return all of the ingredients in this recipe
        RecipeIngredient.all.select do |r_ingredient|
            r_ingredient.recipe == self
        end.select do |r_ingredient|
            r_ingredient.ingredient
            # binding.pry
        end
    end

    def allergens
        # should return all of the ingredients in this recipe that are allergens
    end

    def add_ingredients(array)
        # should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
        array.each do |ingredient|
            RecipeIngredient.new("name", ingredient, self)
        end
    end
end