class RecipeCard

    attr_accessor :date, :rating, :user
    attr_reader :recipe
     
    @@all = [] 

    def initialize(recipe, date, rating)
        # binding.pry
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self       
    end

    def self.all 
        # should return all of the RecipeCard instances
        @@all
    end

end