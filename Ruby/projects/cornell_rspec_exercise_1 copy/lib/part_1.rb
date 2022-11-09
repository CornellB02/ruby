def average(num1, num2)
return (num1 + num2) / 2.0
end

def average_array(array)  
    array.sum / array.length.to_f #* 1.0 ##type casting 
end

def repeat(str, num)
string = ""

num.times{string += str}

string
    # str * num
end

def yell(str)
    return str.upcase + "!"
end

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
def alternating_case(str)
    words = str.split(" ")

    newWords = words.map.with_index do |word, i|
        if i % 2 ==0
            word.upcase 
        else 
            word.downcase
        end
    end
    newWords.join(" ")
end

