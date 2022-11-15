
#define a class
class Cat 
    def initialize(name, color, age)
        @name = name
        @color = color
        @age = age 
    end

    #getter method
    def name 
        @name 
    end
    def age 
        @age 
    end
    #setter method
    def age=(newAge)
        @age = newAge
    end
    def takeprop(person)
        puts "#{@name} takes #{person}'s Property"
    end
end

#initalize and instance Cat
cat1 = Cat.new("Money", "red", 4)
cat1.takeprop("Cornell")
# p cat1
# cat1.age = 7
# # cat1.age=(7)
# p cat1

# cat2 = Cat.new("Munnny", "while", 16)
# p cat2.age

class Car
    @@num_wheels = 38949

    def initialize(color)
        @color = color
    end

    def self.upgarde 
        @@num_wheels = 1.2
    end

    def num_wheels
        @@num_wheels
    end
end

car_1 = Car.new("black")
car_2 = Car.new("red")

Car.upgrade


