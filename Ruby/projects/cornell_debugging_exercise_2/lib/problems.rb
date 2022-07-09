# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def largest_prime_factor(num)
    num.downto(0) do |i|
        if num % i == 0 && prime?(i)
           return i
        end
        
   end

end





def prime?(num)
    if num < 2 == 0
        return false
    end
    (2...num).each do |i|
        if num % i == 0
            return false
        end
    end
    return true
end

puts largest_prime_factor(10000000000)

# def unique_chars?(str)
#     count = Hash.new(0)

#     str.each_char {|char| count[char] += 1} 
    
#     count.each do |key, value|

#         return false if value > 1
#     end
#     return true
# end

def unique_chars?(str)
    count = Hash.new(0)

    str.each_char do |char|
        count[char] += 1

    end
    count.each do |key, value|
        return false if value > 1
    end
    return true
end

def dupe_indices(array)
    count = Hash.new {|hash, key| hash[key] = []}

    array.each_with_index do |el, i|
        count[el] << i

    end
    count.select do |key, value|
        value.length > 1
    end
end

# def ana_array(arr1, arr2)
#     newHash = New.hash(0)

#     arr1.each do |ele|
#         newHash[ele] += 1
#     end

#     arr2.each do |ele|
#         newHash[ele] -= 1

#     end

#     newHash.each do |key, value|
#         if value > 0 || value < 0

#             return false
#         end
#     end
#     return true
# end
def ana_array(arr_1, arr_2)

newHash = Hash.new(0)

arr_1.each do |ele|
    newHash[ele] += 1

end 

arr_2.each do |ele|
    newHash[ele] -= 1

end 

newHash.each do |k,v|
    if v != 0

        return false 

    end 

end 

return true 
end




