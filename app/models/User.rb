require 'pry'
class User 
    
    attr_accessor :name
    

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        # should return all of the user instances
        @@all
    end

    def recipes
        
        # should return all of the recipes this user has recipe cards for
        RecipeCard.all.select do |card|
            card.user == self
        end
    end

    def add_recipe_card(recipe, date, rating)
        # should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
        new_card = RecipeCard.new(recipe, date, rating)
        new_card.user = self
    end

    def declare_allergen(ingredient)
        new_allergen = Allergen.new("name", ingredient, self)
        # should accept an ingredient instance as an argument, and create a new allergen instance for 
        # this user and the given ingredient
    end

    def allergens
        # should return all of the ingredients this user is allergic to
        Allergen.all.select do |allergen|
            allergen.user == self
        end.map do |allergen|
            allergen.ingredient
        end
    end

    def top_three_recipes
        # should return the top three highest rated recipes for this user.
    end

    def most_recent_recipe
        # should return the recipe most recently added to the user's cookbook.
    end

    def safe_recipe
        # should return all recipes that do not contain ingredients the user is allergic to
        Recipe.all.select do |recipe|
            recipe.ingredients.select do |ingredient|
                self.allergens.each do |allergen|
                    ingredient != allergen
                end
            end
        end

        OR 

        Recipe.all.select do |recipe|
            recipe.ingredients.include?(self.allergens) == false
        end

    end     

end


