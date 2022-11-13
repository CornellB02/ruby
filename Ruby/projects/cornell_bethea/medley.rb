def duos(str)
    # count = 0
  
    # str.each
    (0...str.length).count { |i| str[i] == str[i + 1] }
  end
  
#   p duos('bootcamp')      # 1
#   p duos('wxxyzz')        # 2
#   p duos('hoooraay')      # 3
#   p duos('dinosaurs')     # 0
#   p duos('e')             # 0
  
  def sentence_swap(sentence, hash)
    words = sentence.split(" ")
  
    arr = []
  
    words.each do |word|
      if hash[word]
        arr.push(hash[word])
      else 
        arr.push(word)
      end
    end
    arr.join(" ")
  end
  
  # def sentence_swap(sent, hash) # 'anyth you can do I can do'
  #   sent.split(' ').map { |word| hash.has_key? ? hash[word] : word }.join(' ')
  # end
  
#   p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
#   ) # 'nothing you shall drink I shall drink'
  
#   p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
#   ) # 'make a happy ad'
  
#   p sentence_swap('keep coding okay',
#     'coding'=>'running', 'kay'=>'pen'
#   ) # 'keep running okay'
  
  def hash_mapped(hash, prc, &blk)
    new_hash = Hash.new 
  
    hash.each do |k, v|
      new_hash[blk.call(k)] = prc.call(v)
    end
    
    new_hash
  end
  
#   puts
#   double = proc { |n| n * 2 }
#   p hash_mapped({ 'a' => 4, 'x' => 7, 'c' => -3 }, double) { |k| k.upcase + '!!' }
#   # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}
  
#   first = proc { |a| a[0] }
#   p hash_mapped({ -5 => %w[q r s], 6 => %w[w x] }, first) { |n| n * n }
#   # {25=>"q", 36=>"w"}
  
  def counted_characters(str)
    chars = Hash.new
  
    arr1 = []

    str.each_char do |word|
        word.each_char do |ele|

            if !chars[ele] 
                # p --
                chars[ele] = 1
            else 
                chars[ele] += 1
            end
    end
    
end
chars.keys.select do |k| 
    if chars[k] > 2
        arr1.push(k)
end


  
end

  end

#   def counted_characters(str)
#     letterCount = Hash.new(0)
  
#     str.each_char { |char| letterCount[char] += 1 }
#     letterCount.keys.select do |key| 
#       letterCount[key] > 2 
#       debugger
#     end
#   end
    
  puts
  p counted_characters("that's alright folks") # ["t"]
  p counted_characters("mississippi") # ["i", "s"]
  p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
  p counted_characters("runtime") # []
  
  
  p counted_characters("that's alright folks") # ["t"]
  p counted_characters("mississippi") # ["i", "s"]
  p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
  p counted_characters("runtime") # []
  
  

  def triplet_true(str) # 'aaabccz' => 'a3bc2z'
    str.each_char.with_index do |char, i|
        if char == str[i+1] && str[i+1] == str[i+2]
            return true 
        end
    end
    return false 
end

p triplet_true('caaabb')        # true
p triplet_true('terrrrrible')   # true
p triplet_true('runninggg')     # true
p triplet_true('bootcamp')      # false
p triplet_true('e')             # false

def energetic_encoding(str, hash)
    arr = []

    str.each_char do |char|
        if hash[char]
            arr.push(hash[char])
        elsif
            if char == " "
                arr.push(" ")
        else 
            hash[char] == nil
            arr.push("?")
            end
        end
    end
    return arr.join("")
end




p energetic_encoding('sent sea',
    'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
) # 'zimp ziu'

p energetic_encoding('cat',
    'a'=>'o', 'c'=>'k'
) # 'ko?'

p energetic_encoding('hello world',
    'o'=>'i', 'l'=>'r', 'e'=>'a'
) # '?arri ?i?r?'

p energetic_encoding('bike', {}) # '????'

def uncompress(str)
    string = ""
    str.each_char.with_index do |ele, i|
            num = str[i + 1].to_i
           num.times do
            string += ele
        end
    end
    return string
end

p uncompress('a2b4c1') # 'aabbbbc'
p uncompress('b1o2t1') # 'boot'
p uncompress('x3y1x2z4') # 'xxxyxxzzzz'

def conjunct_select(arr, *prcs)
    arr.select { |ele| prcs.all? { |prc| prc.call(ele) } }
  end

  is_positive = Proc.new { |n| n > 0 }
  is_odd = Proc.new { |n| n.odd? }
  less_than_ten = Proc.new { |n| n < 10 }
  
  p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
  p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
  p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]


  def convert_pig_latin(sentence)
    words = sentence.split(" ")
    arr = []

    words.each do |word|
        if word.length < 3 
            arr << word 
        else 
            arr << isCap(translater(word))

        end
    end
    return arr.join(" ")
  end

  
  def translater(word)
    vowels = "aeiou"

    word.each_char.with_index do |char, i|
        if vowels.include?(word[0].downcase)
            
           return word + "yay"
        else 
            if vowels.include?(word[i].downcase)
               return  word[i..word.length] + word[0...i] + "ay"
            end
        end
    end
    
  end

  def isCap(word) 
    word.each_char do |char|
        if char == char.capitalize
            return word[0].capitalize + word[1..word.length].downcase
        end
    end
    return word
  end





# def convert_pig_latin (sen)

#     words = sen.split(' ')
  
#     new_sen = words.map.with_index do |word, i|
#         if word.length >= 3
#             new_word = change_word(word)
#         else
#             word
#         end
#     end
  
#     new_sen[0] = new_sen[0][0].upcase + new_sen[0][1..-1].downcase
#     return new_sen.join(" ")
# end

# def change_word(word)
#     vowels = "aeiou"
#     if vowels.include?(word[0])
#         return word + "yay"
#     end

#     word.each_char.with_index do |char, i|
#         if vowels.include?(char)
#             return word[i..-1] + word[0...i] + "ay"
#         end
#     end
# end
#   p translater("bananas")

p  convert_pig_latin('We like to eat bananas') # "We ikelay to eatyay ananasbay"
p convert_pig_latin('I cannot find the trash') # "I annotcay indfay ethay ashtray"
p convert_pig_latin('What an interesting problem') # "Atwhay an interestingyay oblempray"
p convert_pig_latin('Her family flew to France') # "Erhay amilyfay ewflay to Ancefray"
p convert_pig_latin('Our family flew to France') # "Ouryay amilyfay ewflay to Ancefray"

def reverberate(sentence)
    words = sentence.split(" ")
    arr = []

    words.each do |word|
        if word.length < 3 
            arr << word 
        else 
            arr << isCap(translater2(word))

        end
    end
    return arr.join(" ")
  end
# end

def translater2(word)
    vowels = "aeiou"

    i = word.length - 1
    while i > 0
        if vowels.include?(word[word.length-1].downcase)
            
            return word + word
         else 
             if vowels.include?(word[i].downcase)
                return  word + word[i...word.length] 
             end
         end
        i -= 1
    end
end
  

  p reverberate('We like to go running fast') # "We likelike to go runninging fastast"
  p reverberate('He cannot find the trash') # "He cannotot findind thethe trashash"
  p reverberate('Pasta is my favorite dish') # "Pastapasta is my favoritefavorite dishish"
  p reverberate('Her family flew to France') # "Herer familyily flewew to Francefrance"


  def disjunct_select(arr, *procs)
    arr.select {|ele| procs.any? { |proc| proc.call(ele) } } ## access elements , 
  end

  longer_four = Proc.new { |s| s.length > 4 }
contains_o = Proc.new { |s| s.include?('o') }
starts_a = Proc.new { |s| s[0] == 'a' }

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
) # ["apple", "teeming"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o
) # ["dog", "apple", "teeming", "boot"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o,
    starts_a
) # ["ace", "dog", "apple", "teeming", "boot"]

def alternating_vowel(sent)
    sentArr = sent.split(' ')
    # newArr = Array.new(0)

    sentArr.each_with_index do |word, i|
      if i % 2 == 0 
        sentArr[i] = first_vowel_remove(word)
      else
        sentArr[i] = last_vowel_remove(word)
      end
    end
    return sentArr.join(" ")
  end
  
  def first_vowel_remove(word)
    vowels = 'aeiou'
  
    word.each_char.with_index do |char, i|
      return word[0...i] + word[i + 1..-1] if vowels.include?(char.downcase)
    end
    word
  end
  
  def last_vowel_remove(word)
    vowels = 'aeiou'

    i = word.length - 1
    while i > 0
        if vowels.include?(word[i])
            return word[0...i] + word[i + 1..-1]
        end

        i -= 1
    end
end



# p last_vowel_remove("panthers")

#   def alternating_vowel(sent)
#     sentArr = sent.split(' ')
  
#     sentArr.each_with_index do |word, i|
#       if i % 2 == 0 
#         sentArr[i] = first_vowel_remove(word)
#       else
#         sentArr[i] = last_vowel_remove(word)
#       end
#     end
#     sentArr.join(" ")
#   end
  
#   def first_vowel_remove(word)
#     vowels = 'aeiou'
  
#     word.each_char.with_index do |char, i|
#       return word[0...i] + word[i + 1..-1] if vowels.include?(char.downcase)
#     end
  
#     word
#   end
  
#   def last_vowel_remove(word)
#     vowels = 'aeiou'
  
#     word.reverse!.each_char.with_index do |char, i|
#       if vowels.include?(char.downcase)
#         return (word[0...i] + word[i + 1..-1]).reverse
#       end
#     end 
#     word
#   end

p alternating_vowel('panthers are great animals') # "pnthers ar grat animls"
p alternating_vowel('running panthers are epic') # "rnning panthrs re epc"
p alternating_vowel('code properly please') # "cde proprly plase"
p alternating_vowel('my forecast predicts rain today') # "my forecst prdicts ran tday"

def silly_talk(sentence)
    words = sentence.split(" ")

    arr = Array.new(0)
    words.each do |word|
        arr.push(isCap(vowel_finder(word)))
    end
    return arr.join(" ")
end

def vowel_finder(word)
    vowels = "aeiou"
    newWord = ""
    return word + word[word.length - 1] if vowels.include?(word[-1])

    word.each_char do |char|
        if vowels.include?(word[word.length - 1])
        elsif vowels.include?(char)
            newWord += char + "b" + char 
        else 
            newWord += char
        end
    end
    return newWord
end

p silly_talk('Kids like cats and dogs') # "Kibids likee cabats aband dobogs"
p silly_talk('Stop that scooter') # "Stobop thabat scobooboteber"
p silly_talk('They can code') # "Thebey caban codee"
p silly_talk('He flew to Italy') # "Hee flebew too Ibitabaly"

# p vowel_finder("code")
# p vowel_finder("scooter")

def compress(string)
    compressed = ''
    letters = ('a'..'z').to_a
    i = 0

    while i < string.length
        char = string[i]
        count = 1
        i += 1
        
        while char == string[i]
            count += 1
            i += 1
        end

        if count > 1
            compressed += char + count.to_s
        else
            compressed += char
        end
    end

    compressed
end

p compress('aabbbbc')   # "a2b4c"
p compress('boot')      # "bo2t"
p compress('xxxyxxzzzz')# "x3yx2z4"
