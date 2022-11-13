def zip(*array)
    retArr = []

    array[0].each_with_index do |ele , i|   
        temp = []
        array.each {|array| temp << array[i]}
        retArr << temp
    end
    retArr
end

# array_1 = ['a', 'b', 'c']
# array_2 = [1, 2, 3] 
# array_3 = ['w', 'x', 'y']

# p zip(array_1, array_2)

def prizz_proc(arr, proc1, proc2)
    arr.select {|ele| (proc1.call(ele) && !proc2.call(ele) || proc2.call(ele) && !proc1.call(ele))}
end

def zany_zip(*arrays)
    length = arrays.inject(0) do |count, arr|

        if arr.length > count 
            count = arr.length 
        end
        count
    end
    newArr = []
    (0...length).each do |i|
        innerArr = []
        arrays.each do |arr|
        innerArr << arr[i]
         end 
         newArr << innerArr
    end
    return newArr
end


def ma




