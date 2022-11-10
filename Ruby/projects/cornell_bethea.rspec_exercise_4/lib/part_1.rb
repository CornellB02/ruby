def my_reject(array, &blk)
    array.select {|ele| !blk.call(ele) }
end

def my_one?(array, &blk)
    return array.count {|ele| blk.call(ele) } == 1
end

def hash_select(hash, &blk)
    resHash = Hash.new(0)

    hash.each do |k, v|
        if blk.call(k, v)
            resHash[k] = v
        end
    end
    return resHash
end

def xor_select(array, proc1, proc2)
    array.select {|ele| (proc1.call(ele) && !proc2.call(ele)) || (!proc1.call(ele) && proc2.call(ele)) }
end

def proc_count(val, procs)
    procs.count {|proc| proc.call(val)}
end

