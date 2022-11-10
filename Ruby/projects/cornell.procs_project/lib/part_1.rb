def my_map(array, &block)
    newArr = []

    array.each do |ele|
        newArr << block.call(ele)
    end
    return newArr
end

p ([money, love, hun, work], )

def my_select(array, &block)

    newArr = []
    
    array.each do |ele|

        if block.call(ele)
            newArr << ele

        end
    end
    return newArr
end

def my_count(array, &block)
    count = 0

    array.each do |num|
        if block.call(num) 
            count += 1
        end
    end
    return count
end

def my_any?(array, &block)
    array.each do |ele| 
        if block.call(ele) 
            return true
        end
    end
    return false
end

def my_all?(array,&block)
    array.each do |ele|
        if !block.call(ele)
            return false
        end
    end
    return true
end

def my_none?(array, &block)
    array.each do |ele|
        if block.call(ele)
            return false
        end
    end
    return true
end

