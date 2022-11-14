def my_map!(arr,&blk)
    arr.each_with_index do |ele, i|
        arr[i] = blk.call(ele)
    end
end

def two?(arr, &blk)
    arr.count {|ele| blk.call(ele)} == 2
end

def nor_select(arr, proc1, proc2)
    resArr = []
    arr.each do |ele|
        if !proc1.call(ele) && !proc2.call(ele)
            resArr << ele
        end
    end
    resArr
 end

even = Proc.new { |n| n.even? }
positive = Proc.new { |n| n > 0 }

p nor_select([-2, -4, 7, -7, -5], even, positive)


def array_of_hash_sum(arr)
    sum = 0
    arr.each do |hash|
        hash.each do |k,v|
            sum += v
        end
    end
    sum
end

arr_1 = [
            { matt: 17, polina: 19, erin: 18 },
            { jj: 9, anna: 17}
        ]

p array_of_hash_sum(arr_1)


def slangify(sent)
    words = sent.split(" ")

    arr = []

    words.each do |word|
        arr << vowelrm(word)
    end
    arr.join(" ")
end

def vowelrm (word)
    vowels = "aeiouAEIOU"
    
    word.each_char.with_index do |char,i|
        if vowels.include?(char.downcase)
            return word[0...i] + word[i+1..-1]
        end
    end
    word
end

# print vowelrm("follow the yellow brick road")

def char_counter(str, *arg)
    if arg.length <= 0
      count = Hash.new(0)
      str.split('').each {|el| count[el] += 1}
      return count
    end
  count = Hash.new
  arg.each { |el| count[el] = 0}
  
  str.split("").each do |el|
  if arg.include?(el)
    count[el] += 1
  end
  end
  count 
  end

p char_counter('mississippi', 'm', 'i')