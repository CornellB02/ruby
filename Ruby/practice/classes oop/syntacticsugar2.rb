



class Queue
    def initialize
        @line = []
    end

    def [](pos)
        @line[pos]
    end

    def []=(pos, ele)
        @line[pos] = ele
    end
    # def ele_position(pos)
    #     @line[pos]
    # end

    def add(ele)
        @line << ele ## add ele to back of line 
        nil
    end

    def remove 
        @line.shift # remove front of the line 
    end
end

checkout = Queue.new
checkout.add("Cj")
checkout.add("Money")
# p checkout.ele_position(0)
# p checkout.ele_position(1)
p checkout[0]
p checkout.[]=(0,"Mula")
p checkout[0] = "Money"
p checkout
# p checkout[1]
