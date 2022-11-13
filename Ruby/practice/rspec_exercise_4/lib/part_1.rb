def my_reject(arr, &blk)
    arr.select {|ele| !blk.call(ele)}
end

def my_one?(arr, &blk)
    arr.count{|ele| blk.call(ele)} == 1
end

def hash_select(hash, &blk)
    reshash = Hash.new

    hash.each do |k,v|
        if blk.call(k,v)
            reshash[k] = v
        end
    end
    return reshash
end

def xor_select(array, proc1, proc2)
    array.select {|ele| proc1.call(ele) && !proc2.call(ele) || !proc1.call(ele) && proc2.call(ele) }
end

def proc_count(value, array)
    array.count{|proc| proc.call(value)}
end

