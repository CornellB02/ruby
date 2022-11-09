def strange_sums(array)
    pairs = 0

    array.each_with_index do |num, i|
        array[i+1..array.length].each_with_index do |num2, j|
        if num + num2 == 0
            pairs += 1 
            end
        end
    end
    return pairs
end



# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0


# def pair_product(array, product)

#     array.each_with_index do |num, i|
#         array[i+1..array.length].each_with_index do |num2, j|
#         if num * num2 == product
#             return true
#             end
#         end
#     end
#     return false 
# end


def pair_product(arr, num) #([4, 2, 5, 8], 16)  => true 
    divHash = Hash.new(0) #{4=>4, 8=>2, 3=>5, 2=>8}

    arr.each do |ele|   # itirate through array
        divHash[num/ele] = ele  # k = 16 / 8 = 2 v = 8
        p divHash
    end
    arr.each do |ele|
        if ele * divHash[ele] == num && divHash[ele] != ele #4 * divHash[4] != ele = 4
            return true 
        end

    end
    return false 
end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

def rampant_repeats(str, h)
    string = ""

    str.each_char do |char|

        if h.has_key?(char)
            string += char * h[char]
        else
            string += char
        end
    end
    return string
end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2}) 

def perfect_square(num)
    i = 0
    while i * i <= num
        if i * i == num
            return true 
        end
        i += 1
    end
    return false 
end



# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false

def anti_prime?(num)
    checker = factorfinder(num)
    (1...num).any? { |i| return false if factorfinder(i) > checker }  
    return true
end

def factorfinder(num)
    (1..num).count { |i| num % i == 0 }
end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false


def matrix_addition(matrix1, matrix2)
    resMatrix = Array.new(matrix1.length) {Array.new(matrix1.length,0)}

    matrix1.each_with_index do |innerArr, i|
        matrix1[i].each_with_index do |ele , j|
            resMatrix[i][j] = matrix1[i][j] + matrix2[i][j]
        end
    end
    return resMatrix
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

# def mutual_factors(*nums)
#     checkHash = Hash.new
#     (0..nums.length).each_with_index do |ele, i|
#         # (1..nums.min).select  

#     end

# end
def mutual_factors(*nums)
    (1..nums.min).select {|i| nums.all?{|ele| (ele % i).zero?}}
end

def mutual_factors(*nums)

end

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]

# def get_divisors(num)
#     (1..num).select {|i| num % i == 0}
# end

def tribonacci_number(n)
    if n < 1 
        return 0
    elsif n == 1 
        return n
    end
    return tribonacci_number(n - 1) + tribonacci_number(n - 2) + tribonacci_number(n - 3)
end

# def tribonacci_number(num)
#     return 1 if num <= 2
#     return 2 if num == 3

#     seq = [1, 1, 2]

#     (num-seq.length).times { |i| seq << seq[-1] + seq[-2] + seq[-3] }

#     seq[-1]
# end


    # prev2 = 0
    # prev1 = 0
    # cur = 1
    # n = 1
    # temp1 = 0
    # temp2 = 0

    # while n <= num
    #      temp1 = cur
    #      temp2 = prev1

    #     cur += cur + prev1 + prev2

    #     prev1 = temp1
    #     prev2 = temp2
    #     n += 1
    # end
    # return cur
# end

# p tribonacci_number(1)  # 1
# p tribonacci_number(2)  # 1
# p tribonacci_number(3)  # 2
# p tribonacci_number(4)  # 4
# p tribonacci_number(5)  # 7
# p tribonacci_number(6)  # 13
# p tribonacci_number(7)  # 24
# p tribonacci_number(11) # 274


def matrix_addition_reloaded(*matrecies)
    length = matrecies[0].length 
    if matrecies.any?{|matrix| matrix.length != length}
    return nil
    end
    retMatrix = matrecies[0]
    matrecies[1..-1].each do |matrix|
        retMatrix = matrix_addition(retMatrix, matrix)
    end
    return retMatrix
end


# def squarocol?(sqmatrix)
#     sqmatrix.each do |row|
#         return true if row.all?{|ele| ele == row[0]}
#     end
#     sqmatrix[0].each_with_index do |ele, i|
#         sqmatrix[1..-1].each do |row|
#             if  row[i] == ele 
#                 return true
#             end

#         end

#     end
#     return false 
# end


def squarocol?(sqmatrix)
    sqmatrix.each do |row|
        return true if row.all?{|ele| ele == row[0]}
    end

    count = 1
    sqmatrix[0].each_with_index do |ele, i|
        sqmatrix[1..-1].each do |row|
            count += 1 if row[i] == ele
        end
        return true if count == sqmatrix.length
        count = 1
    end
    return false
end

# p squarocol?([
#     [:a, :x , :d],
#     [:b, :x , :e],
#     [:c, :x , :f],
# ]) # true

# p squarocol?([
#     [:x, :y, :x],
#     [:x, :z, :x],
#     [:o, :o, :o],
# ]) # true

# p squarocol?([
#     [:o, :x , :o],
#     [:x, :o , :x],
#     [:o, :x , :o],
# ]) # false

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 7],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # true

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 0],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # false


def squaragonal?(sqmatrix)
    length = sqmatrix.length 
    
    count1,count2 = 1,1

    firstL = sqmatrix[0][0]
    firstR = sqmatrix[0][2]

    (1...length).each do |i|
        if sqmatrix[i][i] == firstL
            count1 += 1
        end
        if sqmatrix[i][length - 1 - i] == firstR
            count2 += 1
        end
        #first element 00
        #secodn element 11
        #third element 22

        
    end
    return count1 == length || count2 == length

end

def squaragonal? (matrix)
    left_D = []
    right_D = []
    matrix.each_with_index do |row, i|
        matrix[i].each_with_index do |col, j|
           left_D = (0..matrix[1].length-1).map {|i| matrix[i][i]}
            right_D = (0..matrix[1].length-1).map {|i| matrix[i][-i-1]}
        end
    end
    if left_D.all? {|ele| ele == left_D[0]} || right_D.all? {|ele| ele == right_D[0]}
        return true
    end
    return false
end


p squaragonal?([
    [:x, :y, :o],
    [:x, :x, :x],
    [:o, :o, :x],
]) # true

p squaragonal?([
    [:x, :y, :o],
    [:x, :o, :x],
    [:o, :o, :x],
]) # true

p squaragonal?([
    [1, 2, 2, 7],
    [1, 1, 6, 7],
    [0, 5, 1, 7],
    [4, 2, 9, 1],
]) # true

p squaragonal?([
    [1, 2, 2, 5],
    [1, 6, 5, 0],
    [0, 2, 2, 7],
    [5, 2, 9, 7],
]) # false

def pascals_triangle(levels)
    return [1] if levels == 0 
    return [[1]] if levels == 1

    newArr = [[1], [1]]

    while(newArr.length <= levels)
        currentBase = newArr[newArr.length-1]
        newBase = [1]

        i = 0
        while i < currentBase.length - 1
            ele1 = currentBase[i]
            ele2 = currentBase[i+1]
            newBase.push(ele1 + ele2)
        i += 1    
        end
        newBase << 1
        newArr << newBase
    end
    return newArr
end

# def pascals_triangle(levels)
#     if levels == 0 
#         return [[]]
#     end
#     if levels == 1
#         return [[1]]
#     end
#     arr = [[1],[1,1]]
#     while arr.length <= levels
#         currbase = arr[arr.length - 1]
#         newbase = [1]
#         currbase.each_with_index do |ele, i|
            
#             newbase << ele && ele[i+1]
#             arr += 1
#         end
#     end
#     return newbase
# end



p pascals_triangle(5)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1]
# ]

p pascals_triangle(7)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1],
#     [1, 5, 10, 10, 5, 1],
#     [1, 6, 15, 20, 15, 6, 1]
# ]


def prime?(n)
    return false if n < 2

    (2...n).each do |i|
        if n % i == 0
            return false 
        end
    end
    return true 
end
    


def mersenne_prime(num)
    counter = 0 
    power = 1

    while counter <= num 

    end
    
end