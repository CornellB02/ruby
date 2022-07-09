require "byebug"

def select_even_nums(array)
    array.select{|ele| ele.even?}

end

def reject_puppies(array)
    array.reject{|hash| hash["age"] <= 2}
end

def count_positive_subarrays(array)
    array.count{|subArray| subArray.sum.positive?}
end

# def aba_translate(word)
#     vowels = "aeiou"
#     newWord = ""

#     word.each_char do |char|
#         if vowels.include?(char)
#             newWord += char + "b" + char
         
#         else 
#             newWord += char
        
#         end
#     end 
#     return newWord
# end


def aba_translate(word)

    vowels = "aeiou"
word.split("").map { |char|  vowels.include?(char) ? char + 'b' + char : char }.join("")

end

def aba_array(array)
    array.map {|el| aba_translate(el)}
end