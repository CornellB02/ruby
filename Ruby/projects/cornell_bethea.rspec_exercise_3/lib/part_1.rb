def is_prime?(num)
    if num < 2
        return false
    end
    (2...num).each do |i|
        if num % i == 0
            return false 
        end
    end
    return true 
end

def nth_prime(n)
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

p nth_prime(5)


# def prime_range(max, min)
#     arr = Array.new(0)
#     i = min
#     while i < max 
#         if is_prime?(i)
#             arr.push
#         end
#     end
# end

def prime_range(min, max)
    (min..max).select {|ele| is_prime?(ele)}
end