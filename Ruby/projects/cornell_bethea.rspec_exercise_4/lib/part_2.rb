def proper_factors(number)
    (1...number).select {|i| (number % i).zero?}
end

def aliquot_sum(number)
    proper_factors(number).sum
end

def perfect_number?(number)
    number == aliquot_sum(number)
end

def ideal_numbers(n)
    arr = []

    i = 1
    while arr.length < n
        arr << i if perfect_number?(i)
        i += 1
    end
    return arr
end