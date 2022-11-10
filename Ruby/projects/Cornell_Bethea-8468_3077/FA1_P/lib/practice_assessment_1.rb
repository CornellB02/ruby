# Define your methods here. 

def first_letter_vowel_count(sentence)
    words = sentence.split(" ")
    
    vowels = "aeiou"
    count = 0

    words.each do |word|
        if vowels.include?(word[0].downcase)
            count += 1
        end

    end
    return count
end

def count_true(array, proc)
    count = 0

    array.each do |num|
        if proc.call(num) == true
            count += 1
        end
    end
    return count
end

# prc1 = Proc.new {|n| n.even? }
# prc2 = Proc.new {|n| n.odd? }
# prc3 = Proc.new {|str| str.include?("n")}
# prc4 = Proc.new {|n| n < 10}

# p count_true([1,2,3,4,5], prc2)

def procformation(array, proc1, proc2, proc3)
    arr = Array.new(0)

    array.each do |ele|
        if proc1.call(ele) == true
            arr.push(proc2.call(ele))
        else 
            arr.push(proc3.call(ele))
        end
    end
    return arr
end

def array_of_array_sum(array)
    sum = 0

    array.each do |subarrays|
       sum += subarrays.sum
    end
    return sum
end


def selective_reverse(sentence)
    words = sentence.split(" ")

    vowels = "aeiou"
    arr = []
    words.each do |word|
        if vowels.include?(word[0].downcase )
            arr.push(word)
        elsif
            vowels.include?(word[word.length - 1].downcase)
            arr.push(word)
        else
            arr.push(word.reverse)
        end
    end
    return arr.join(" ")
end

p selective_reverse("try to stay awake please")
p selective_reverse("STOP THAT RACKET NOW")

def hash_missing_keys(hash, *nums)
    arr = []
    
    nums.each do |num|
        if hash[num] == nil
            arr.push(num)
        end
    end
    return arr
end