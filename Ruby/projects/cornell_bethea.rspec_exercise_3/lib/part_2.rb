def element_count(array)
    hash = Hash.new(0)

    array.each do |ele|
        hash[ele] += 1
    end
    return hash
end

def char_replace!(str, hash)

    str.each_char.with_index do |char, i|
        if hash.keys.include?(char)
            str[i] = hash[char]
        end # hash[char] != char ? str[i] == char : str[i] = hash[char] 
    end
    return str
end

def product_inject(array)
    array.inject {|acc, num| acc * num }
end


