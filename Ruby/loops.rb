# def repeatHello()
#     puts "Hello"
#     puts "Hello"
#     puts "Hello"
#     puts "Hello"
#     puts "Hello"
# end

# def repeatHello()

#     counter = 1
#     while counter < 5
#         puts counter

#         counter += 0.1
#     end

#     puts "after the loop"
# end

# repeatHello()

# def printNums
#     i = 100
#     while i >= 10
#         puts i 

#         i -= 1
#     end
# end

 
# def printNums(min, max, step)
#     i = min
#     while i <= max
#         puts i
        
#         i += step
        
#     end
# end
# printNums(2,12,2)
# puts "----"
# printNums(20,32,3)

# str = "hello"

# def printChars(str)
# i = 0
# while i < str.length 
#     puts str[i]

#     i += 1
#     end
# end

# printChars("money")
# i = 2

# break - immediately exit the loop 
# next - skips to the net iteration of the operation

def fiveSkip
i = 1 
while i <= 10
    puts i
    if i == 5
        i += 1
        next
    end
    puts i
    i += 1
end
end

fiveSkip
puts "loop end"


# puts str[i]