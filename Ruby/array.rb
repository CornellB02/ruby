# Arrays 

# letters = ["a", "b", "c"]

# puts letters[0]
# puts letters[2]

# my_arr = ["cornell", true, false, 42]

# p my_arr[1]

# names = [
#     "Me",
#     "Mine",
#     "US"
#     ]

# print names
# print "\n"
# names << "Our" # shovel into array 
# names [1] = "CJ"
# print names

# foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen']



# i = 0
# while i < foods.length
#     puts foods[i]

#     i += 1
# end
 
def print_array(arr)
    i = 0
    while i < arr.length 
        puts arr[i]

        i += 1

    end
    
end

foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen']
funny = ['laugh', 'gas', 'cash', 'grass']
print_array(funny)