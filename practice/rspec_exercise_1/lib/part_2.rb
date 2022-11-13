def hipsterfy(word)
    vowels = "aeiou"

    i = word.length - 1
    while i > 0
        if vowels.include?(word[i].downcase)
            return word[0...i] + word[i+1..-1]
        end
        i -= 1
    end
    word
end

def vowel_counts(str)
    vowel = "aeiou"

    hash = Hash.new

    str.each_char do |ele|
        if vowel.include?(ele.downcase)
            if hash[ele.downcase] == nil
                hash[ele.downcase] = 1
            else 
                hash[ele.downcase] += 1
            end
        end
        end
        return hash
end

p vowel_counts("code bootcamp")
p vowel_counts("WILLIAMSBURG bridge")
p vowel_counts("williamsburg bridge")

def caesar_cipher(message, num)
    alpha = ("a".."z").to_a.join

    # arr = []
    
    message.each_char.with_index do |char, i|
       if alpha.include?(char)
        message[i] = alpha[(alpha.index(char) + num) % 26]
                    #a..z[4 + 26] 
       end                # 6  
    end
  
end

# p caesar_cipher("eeee" , 25)





# alpha = ("a".."z").to_a
# p alpha