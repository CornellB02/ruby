def string_map!(str, &blk)
    str.each_char.with_index do |char, i|
        str[i] = blk.call(char)
    end
    str
end

p string_map!("Apple Cider") { |char| char.upcase }

def three?(array, &blk)
    array.count {|ele| blk.call(ele)} == 3
end

p three?([2017, 4, 1, 13, 6]) { |n| n.odd? }
p three?([27, 5, 1]) { |n| n.odd? }
p three?(["phone", "booth", "street", "song"]) { |str| str.include?("o") }
p three?([8, 5, 7, 13, 11]) { |n| n.odd? }
p three?([2, 1]) { |n| n.odd? }
p three?(["phone", "booth", "poem", "song"]) { |str| str.include?("o") }

# even =  {|n| n.even? } 
# positive = {|n| n > 0}
even = Proc.new { |n| n.even? }
positive = Proc.new { |n| n > 0 }
allUp = Proc.new { |x| x == x.upcase }
starWit_a = Proc.new { |x| x[0].downcase == "a" }


def nand_select(array, prc1, prc2)
    array.reject {|ele| prc1.call(ele) && prc2.call(ele)}
end

p nand_select([-2, -4, 7, 6, 8], even , positive )
p nand_select([10, 11, 13, 12,], even , positive )
p nand_select(["potato", "ORANGE", "ASPARAGUS", "toMATO", "APPLE"], allUp , starWit_a )
p nand_select(["appp", "ACADEMY", "bootcamp", "Coding", "aAyehii"], allUp , starWit_a )

def hash_of_array_sum(hash)
    hash.values.flatten.sum
end

hash1 = {
    one: [32, 8, 0],
    two: [-7],
    three: []
}

hash2 = {
    a: [4, 7, -2, 1],
    b: [5, 10]
}

p hash_of_array_sum(hash2)

def removeVowels(word)
    vowels = "aeiouAEIOU"

    str = ""
    word.each_char do |char|
        if !vowels.include?(char.downcase)
            str += char
        end
    end
    str
end

def abbreviate(sentence)
    words = sentence.split(" ")

    arr = []

words.each do |word|
    if word.length > 4
       arr << removeVowels(word)
    else 
        arr << word
        end
    end
    arr.join(" ")
end



p abbreviate("follow the yellow brick road")
p abbreviate("try to stay awake please")
p abbreviate("STOP THat RSCKET NOW")


def hash_selector(hash, *eles)
    rethash = {}
    if eles.length < 1
        return hash 
    else 
        eles.each do |ele|
            rethash[ele] = hash[ele]
        end
    end
    rethash
end


p hash_selector({"z"=> true, "f"=>1, "c"=>32}, "z", "c")



