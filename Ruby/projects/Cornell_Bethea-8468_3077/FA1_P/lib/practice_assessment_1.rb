def first_letter_vowel_count(sent)
    words = sent.split(" ")

    vowels = "aeiou"

    words.count {|word| vowels.include?(word[0].downcase)}
end

def count_true(arr, prc)
    arr.count {|ele| prc.call(ele)}
end

def procformation(arr, prc, prc2, prc3)
    array = Array.new(0)

    arr.each do |ele|
        if prc.call(ele)
            array.push(prc2.call(ele))
        else
            array.push(prc3.call(ele))
        end
    end
    array
end

def array_of_array_sum(array)
    return array.flatten.sum
end

def selective_reverse(sent)
    words = sent.split
    vowels = "aeiou"

    array = []

    words.each do |word| 
        if !vowels.include?(word[0].downcase) && !vowels.include?(word[word.length - 1].downcase)
            array.push(word.reverse)
        else 
            array.push(word)
        end
    end
    array.join(" ")

end

def hash_missing_keys(hash, *n)
    arr = Array.new

    n.each do |ele|
        if hash[ele] == nil
            arr << ele
        end
    end
    return arr
end