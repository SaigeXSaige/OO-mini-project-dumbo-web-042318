class RecipeIngredient

    attr_reader :name, :ingredient, :recipe

    @@all = []

    def initialize(name, ingredient, recipe)
        @name = name
        @ingredient = ingredient
        @recipe = recipe
        @@all << self
    end

    def self.all 
        #  return all of the RecipeIngredient instances
        @@all
    end

end