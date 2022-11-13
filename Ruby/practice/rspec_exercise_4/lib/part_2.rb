def proper_factors(num)
    (1...num).select {|i| (num % i).zero?}
end

# p proper_factors(12)
def aliquot_sum(num)
    proper_factors(num).sum
end

def perfect_number?(num)
    num == aliquot_sum(num)
end

# def ideal_numbers(num)
#     arr = Array.new(0)

#     i = 1
#     while arr.length < num
#      if perfect_number?(i)
#         arr << i
#      end
#         i += 1
#     end
#     arr
# end

def ideal_numbers(num)
    arr = []

    (0...num).each do |i|
    if perfect_number(i)
        arr.push(i)
        end
    end
    arr
end

def ideal_numbers(num)
    arr = []

    (1...num).select {|i| perfect_number?(i)}
end