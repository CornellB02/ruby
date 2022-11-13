def palindrome?(str)
    str.each_char.with_index do |char, i|
        if str[i] !=  str[str.length-1-i]
            return false
        end
    end
    return true 
end

def substrings(string)
    arr = Array.new(0)
    temp = ""

    string.each_char.with_index do |char, i|
        arr << char
        temp += char
        # p arr
        # p temp
        string[i+1..-1].each_char do |char|
            temp += char 
            arr << temp
        end 
        temp = ""
    end
    return arr
end
# p palindrome?("madam") 

# p substrings("jump")

def palindrome_substrings(string)
    substrings(string).select {|ele| ele.length > 1 && palindrome?(ele)}
end