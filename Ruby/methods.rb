# puts "Hey Programmers"
# puts "whats for dinner"
#Defining a method 
def sayMessage 
    puts "Hey Programmers"
    puts "whats for dinner"

end 

#call method

# puts "before the method call"
# sayMessage 
# puts "after the method call"


# def say_hello(person)
#     puts "HEllo " + person + "."
# end

# say_hello("CJ")

# def say_hello(person1, person2)
#     puts "HEllo " + person1 + " and " + person2 + "."
# end

# say_hello("CJ", "Cornell")

def calc_ave(num1, num2)
    sum = num1 + num2 
    avg = sum / 2.0
    return avg
end

results = calc_ave(5, 10)

puts results + 2

# return keyword lets a method call evaluate to a value 

def ave_of_three(num1,num2,num3)
    sum = num1 + num2 + num3
    avg = sum / 3.0
    return avg
end

puts ave_of_three(6, 29, 3)