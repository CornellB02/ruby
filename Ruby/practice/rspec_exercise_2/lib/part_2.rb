def palindrome?(str)
    str.each_char.with_index do |char, i|
        if str[i] !=  str[str.length-1-i]
            return false
        end
    end
    return true 
end

def substrings(str)
    subs = []
    (0...str.length).each do |startIdx|         
        (startIdx...str.length).each do |endIdx|    
            subs << str[startIdx..endIdx]
            
        end
    end
    return subs
end
# p palindrome?("madam") 

p substrings("jump")

def palindrome_substrings(string)
    str = substrings(string)
    str.select {|ele| ele.length > 1 && palindrome?(ele)}
end