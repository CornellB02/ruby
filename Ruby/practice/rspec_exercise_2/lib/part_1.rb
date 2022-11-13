def partition(array, n)
    retArr = Array.new(0)

    retArr << array.select {|ele| ele < n } && retArr << array.select {|ele| ele >= n}
    return retArr
end

# p partition([11, 5, 13, 2, 3], 7)

def merge(hash1, hash2) #***********
    reshash = Hash.new

    hash1.each {|k, v| reshash[k] = v}
    hash2.each {|k, v| reshash[k] = v}
    reshash
end

hash_1 = {"a"=>10, "b"=>20}
hash_2 = {"c"=>30, "d"=>40, "e"=>50}

p merge(hash_1, hash_2)

def censor(sent, arr)
    words = sent.split(" ")

    array = Array.new(0)


    words.each do |word|
        if arr.include?(word.downcase || word.upcase)
            array << vowelReplace(word)
        else 
            array << word
        end
    end
    array.join(" ")
end

def vowelReplace(word)
    vowels = "aeiou"

    str = ""
    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            word[i] = "*"
        end
    end
            
end

# p censor("Gosh darn it", ["gosh", "darn", "shoot"])

def power_of_two?(n)  #****************
    if n < 1
        return false
    elsif n == 1
        return true 
    end
    return power_of_two?(n/2.0)
end



