class  Ingredient
    
    attr_accessor :name 

    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        # should return all of the ingredient instances
        @@all
    end

    def self.most_common_allergen 
        # should return the ingredient instance that the highest number of users are allergic to
    end

end
