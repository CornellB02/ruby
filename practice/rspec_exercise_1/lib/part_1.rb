def average(num1, num2)
    return (num1 + num2).to_f / 2
end

def average_array(array)
   return array.sum / array.length.to_f
end

p average_array([2, 4, 6])

def repeat(str, num)
    return str * num
end

def yell(str)
    return str.upcase + "!"
end

def alternating_case(sentence)
    words = sentence.split(" ")

    sent = words.map.with_index {|word, i| (i).even? ? word.upcase : word.downcase }.join(" ")
end
