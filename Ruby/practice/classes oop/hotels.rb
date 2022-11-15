require_relative "./cat.rb"
require_relative "./other animals/dog.rb"

class PetHotel
    def initialize(name)
        @name = name 
        @guests = []
    end

    def check_in(guests)
        @guests << guests 
    end
end


hotel = PetHotel.new("Animal Inn")

cat1 = Cat.new("Money")
cat2 = Cat.new("Munny")
dog1 = Dog.new("MOONey")

hotel.check_in(cat1)
hotel.check_in(cat2)
hotel.check_in(dog1)


p hotel

