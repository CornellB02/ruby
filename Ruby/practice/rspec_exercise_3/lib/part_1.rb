def is_prime?(num)
    return false if num < 2

    (2...num).each do |i|
        if num % i == 0
            return false 
        end
    end
    return true 
end

def nth_prime(n)  #*******
    count = 0
    i = 2
    while true 
        if is_prime?(i)
            count += 1
            if count == n
                return i
            end
        end
        i += 1
    end
end

def prime_range(min, max)
(min..max).select {|num| is_prime?(num)}
end
