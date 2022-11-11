
# should accept any number of arrays of the same length
# as arguments

# should return a 2D array where each subarray contains the 
# elements at the same index from each argument"

def zip(*arrays)
    retArr = []

    arrays[0].each_with_index do |ele, i|
        temp = []
        arrays.each { |array| temp << array[i] }
        retArr << temp
    end
    return retArr
end

def prizz_proc(array, prc1, prc2)
    array.select {|ele| (prc1.call(ele) && !prc2.call(ele)) || (!prc1.call(ele) && prc2.call(ele))}
end

def zany_zip(*arrs)
    length = arrs.inject(0) do |acc, arr|
        if arr.length > acc
            acc = arr.length
        end
        acc
    end
    new_arr = []
    (0...length).each do |i|
        inner_arr = []
        arrs.each do |arr|
        inner_arr << arr[i]
        end
        new_arr << inner_arr
    end
    return new_arr
end

def maximum(arr, &blk)
  arr.inject(arr[0]) do |acc, ele|
    acc = ele if blk.call(ele) >= blk.call(acc)
    acc
  end
end

def my_group_by(arr, &blk)
  hash = Hash.new { |k, v| k[v] = [] } # { foo: [1, ] } => hash[:foo]

  arr.each do |ele|
    hash[blk.call(ele)] << ele
  end

  hash
end


def max_tie_breaker (arr, proc, &blk)
    arr.inject(arr.first) do |acc, ele|
      if blk.call(acc) < blk.call(ele)
          acc = ele
      elsif blk.call(acc) == blk.call(ele) && proc.call(ele) > proc.call(acc)
        acc = ele
      end
        acc
    end
  end


  def vowel_count(word)
    vowels = "aeiou"

    count = 0

    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            count += 1
        end
    end
    count
end


def firstVowel(word)
    vowels = "aeiou"

    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            return word[i..word.length]
        end
    end
end

def lastVowel(word)
    vowels = "aeiou"

    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i].downcase)
            return word[0..i]
        end
        i -= 1
    end
end

def silly_syllables(sentence)
    words = sentence.split(" ")

    newSent = []

    words.each do |word|
        if vowel_count(word) >= 2
           first = firstVowel(word)
           last = lastVowel(first)
           newSent.push(last)
        else 
            newSent.push(word)
        end
        
    end
    newSent.join(" ")
end

# p silly_syllables()