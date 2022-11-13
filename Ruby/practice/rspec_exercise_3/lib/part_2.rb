def element_count(array)
    new_Hash = Hash.new(0)

    array.each do |ele|
        new_Hash[ele] += 1
    end
         new_Hash
end

def char_replace!(str, hash)
    str.each_char.with_index do |char, i|
        if hash.keys.include?(char)
            str[i] = hash[char]
        end
    end
    return str
end

def product_inject(array)
    array.inject {|count, num| count * num}
end

