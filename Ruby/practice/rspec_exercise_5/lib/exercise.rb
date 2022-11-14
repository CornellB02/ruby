def zip(*array)
    retArr = []

    array[0].each_with_index do |ele , i|   
        temp = []
        array.each {|array| temp << array[i]}
        retArr << temp
    end
    retArr
end

# array_1 = ['a', 'b', 'c']
# array_2 = [1, 2, 3] 
# array_3 = ['w', 'x', 'y']

# p zip(array_1, array_2)

def prizz_proc(arr, proc1, proc2)
    arr.select {|ele| (proc1.call(ele) && !proc2.call(ele) || proc2.call(ele) && !proc1.call(ele))}
end

def zany_zip(*arrays)
    length = arrays.inject(0) do |count, arr|

        if arr.length > count 
            count = arr.length 
        end
        count
    end
    newArr = []
    (0...length).each do |i|
        innerArr = []
        arrays.each do |arr|
        innerArr << arr[i]
         end 
         newArr << innerArr
    end
    return newArr
end


def maximum(arr, &blk)
   arr.inject(arr[0]) do |acc, ele|
        acc = ele if blk.call(ele) >= blk.call(acc)
        acc
   end
end

# p maximum(['potato', 'swimming', 'cat']) { |w| w.length }

def my_group_by(arr, &blk)
    resHash = Hash.new{ |k, v| k[v] = [] }

    arr.each do |ele|
        resHash[blk.call(ele)] << ele
    end
    resHash
end

def max_tie_breaker(arr, proc, &blk)
    arr.inject(arr[0]) do |counter, ele|
        if blk.call(counter) < blk.call(ele)
            counter = ele 
        elsif blk.call(counter) == blk.call(ele) && proc.call(ele) > proc.call(counter)
        end
        counter
    end
end

def vowel_counter(word)
    vowels = "aeiouAEIOU"
    count = 0

    word.each_char do |char|
        if vowels.include?(char)
            count += 1
        end
    end
    count
end

# p vowel_counter("oonehunnitt")

def firstVowel(word)
    vowels = "aeiouAEIOU"

    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            return word[i..-1] 
        end
    end
end

def lastVowelrm(word)
    vowels = "aeiouAEIOU"

    i = word.length - 1
    while i > 0
        if vowels.include?(word[i].downcase)
            return word[0..i] 
        end

        i -= 1
    end
end


def silly_syllables(sentence)
    words = sentence.split(" ")

    arr = []

    words.each do |word|
        if vowel_counter(word) >= 2
            first = firstVowel(word)
            last = lastVowelrm(first)
            arr.push(last)
        else 
            arr.push(word)
        end
    end
    arr.join(" ")
end

p silly_syllables('properly and precisely written code')




