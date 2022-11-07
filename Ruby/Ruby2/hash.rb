myHash = {
    "name" => "App Academy" ,
     'color' => 'red' ,
      'age' => [5],
       'isAwsome' => true,
        42 => "hello"
    }

# `key => value ` pairs

# myHash['age'] << ['number']
# puts myHash['age'] 
#  print myHash.has_value?("true")
# myHash.each do |k, v|
#     puts k
#     puts v
#     puts " == "
# end

# myHash.each_value do |thing|
#     print thing
#     puts
# end

# counter = Hash.new(0)

# # my_Hash["a"] = "goodbye"

# str = ("bootcamp prep")

# str.each_char do |char|
#     puts char
#     counter[char] += 1
    
#     puts counter
# end


# my_stash = {"a" => 10, "b" => 28}

# key = "b"

# puts my_stash[key]


def bubbleSort(array)
    sorted = false 
    while (!sorted)

        sorted = true 
        while i = 0
            array.each do |num|
                if (num > array[i + 1])
                    [num, array[i + 1]] = [array[i+1],num]
                    sorted = false 
                    i += 1
                end
            end
        end
    end
    return array
end

arra = [3,87,2,44,323]

puts bubbleSort(arra)