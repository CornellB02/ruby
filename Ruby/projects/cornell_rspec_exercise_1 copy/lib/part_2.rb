# def hipsterfy(word)
#     vowel = "aeiou"

#     i = word.length - 1 
#     while i >= 0
#         if vowel.include?(word[i])
#             return word.slice(0,i) + word.slice(i + 1, word.length)
            
#         end
#         i -= 1
#     end
#     return word
# end

def hipsterfy(word)
    vowels = "aeiou"

    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..word.length]
        end
        i -= 1
    end
    word
end
# def hipsterfy(word)
#     vowels = "aeiou"
#     word.reverse.each_char.with_index do |char, i|
#         if vowels.include?(word[i])
#             word.reverse!.slice!(i)
#             return word.reverse!
#         end
#     end
#     return word
# end

def vowel_counts(str)
    count = Hash.new(0)
    vowels = "aeiou"

    str.each_char do |char|
        if vowels.include?(char.downcase)
            count[char.downcase] += 1
        end
    end
    count
end

# def vowel_counts(str)
#     count = Hash.new(0)
#     vowels = "aeiou"
    
#     str.each_char do |char|
#         if vowels.downcase.include?(char.downcase)
#         count[char.downcase] += 1
#         end
#     end
#     return count
# end

def caesar_cipher(message, n)
    alpha = ('a'..'z').to_a.join("")
    # alpha = "abcdefghijklmnopqrstuvwyz"


    message.each_char.with_index do |char, i|
        if alpha.include?(char)
            # currentCharIdx = alpha.index(char)
            # nextIdx = (currentCharIdx + num) % 26
            # message[i] = alpha[nextIdx]
            message[i] = alpha[(alpha.index(char) + n) % 26]
        end

    end

end
