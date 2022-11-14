class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age 
        @bark = bark
        @favorite_foods = favorite_foods

    end

    def name 
        @name 
    end
    def age 
        @age 
    end
    def breed
        @breed
    end
    def age= newAge
        @age = newAge
    end
    def bark 
        if age > 3
            @bark.upcase
        else 
            @bark.downcase
        end
    end
    def favorite_foods
        @favorite_foods
    end

    def favorite_food? str
        favorite_foods.each do |ele|
            if str.downcase == ele.downcase
                return true
            end
        end
        return false 
    end

end
