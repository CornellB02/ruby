class PetHotel
    def initialize(name)
        @name = name 
        @guests = []
    end

    def check_in(guests)
        @guests << guests 
    end
end

class Cat 
    def initialize(name)
        @name = name 
    end
end


hotel = PetHotel.new("Animal Inn")

cat1 = Cat.new("Money")
cat2 = Cat.new("Munny")

hotel.check_in(cat1)
hotel.check_in(cat1)

p hotel