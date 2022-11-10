def average(num1,num2)
    return (num1 + num2)/2.0
end


def average_array(nums)
    sum = 0
    
    nums.each do |num|
        sum += num 
        # p sum
    end
    return sum * 1.0 / nums.length 

end

def repeat(str, n)
   return str * n
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(sentence)
    words = sentence.split(" ")

    # arr = Array.new(0)

   wordArr = words.map.with_index do |word, i|
    if i % 2 == 0
        word.upcase
    else 
        word.downcase
    end
end
p wordArr
    return wordArr.join(" ")
end

alternating_case("code never lies, comments sometimes do.")


# p average_array([2,3,5,7,3,5,3])

# def average(num1, num2)
# return (num1 + num2) / 2.0
# end

# def average_array(array)  
#     array.sum / array.length.to_f #* 1.0 ##type casting 
# end

# def repeat(str, num)
# string = ""

# num.times{string += str}

# string
# def repeat(str, num)
#     str * num
# end

# def yell(str)
#     return str.upcase + "!"
# end

# def alternating_case(str)
#     words = str.split(" ")
  
#     words.each_with_index do |word, i|
#         if i % 2 == 0 
#             word = word.upcase!
#         else
#             word = word.downcase!
#         end
#     end
#     return words.join(" ")
# end

# def alternating_case(sent)
#     new_sen = sent.split(' ')

#     new_sen.each_with_index.map { |ele, i| (i % 2).zero? ? ele.upcase : ele.downcase }.join(' ')
# end
# def alternating_case(str)
#     words = str.split(" ")

#     newWords = words.map.with_index do |word, i|
#         if i % 2 ==0
#             word.upcase 
#         else 
#             word.downcase
#         end
#     end
#     newWords.join(" ")
# end

# def avg(num1,num2)
#     return (num1 + num2)/2.0
# end


# def avgArray(nums)
#     sum = 0
    
#     nums.each do |num|
#         sum += num 
#         result = sum / nums.lenght 
#     end
#     return result
# end