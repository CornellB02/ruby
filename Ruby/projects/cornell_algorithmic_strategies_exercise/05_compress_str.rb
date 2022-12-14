# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    count, max = 1,1
    new_str = ''
    str.each_char.with_index do |char, i|
        if char == str[i+1]
            count += 1
            if count > max
                max = count
            end
        else
            if count > max
                max = count
            end
            # new_str += max > 1 ? max.to_s + char : char # "aaabbc"=> 3 + a = 3a
            if max > 1
                new_str += max.to_s + char
            else
                new_str += char
            end
            count, max = 1,1
        end
    end
    return new_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
