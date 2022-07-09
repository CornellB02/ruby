def reverser(str, &block)
    block.call(str.reverse)
end

def word_changer(sent, &block)
    words = sent.split(" ")

    return words.map{|word| block.call(word)}.join(" ")
    
end

def greater_proc_value(num, block1, block2)
    return block1.call(num) > block2.call(num) ? block1.call(num) : block2.call(num) 
end

def and_selector(array, block1, block2)
    array.select{|ele| block1.call(ele) && block2.call(ele)}
end

def alternating_mapper(array, block1, block2)
    array.map.with_index do |ele, i|
        if i.even?
            block1.call(ele)
        else 
            block2.call(ele)
        end
    end
end