def string_map!(str, &blk)
    str.each_char.with_index do |char, i|
        str[i] = blk.call(char)
    end
    str
end

p string_map!("Apple Cider") { |char| char.upcase }

def three?(array, &blk)
    array.count {|ele| blk.call(ele)} == 3
end

p three?([2017, 4, 1, 13, 6]) { |n| n.odd? }
p three?([27, 5, 1]) { |n| n.odd? }
p three?(["phone", "booth", "street", "song"]) { |str| str.include?("o") }
p three?([8, 5, 7, 13, 11]) { |n| n.odd? }
p three?([2, 1]) { |n| n.odd? }
p three?(["phone", "booth", "poem", "song"]) { |str| str.include?("o") }

# even =  {|n| n.even? } 
# positive = {|n| n > 0}
even = Proc.new { |n| n.even? }
positive = Proc.new { |n| n > 0 }
allUp = Proc.new { |x| x == x.upcase }
starWit_a = Proc.new { |x| x[0].downcase == "a" }


def nand_select(array, prc1, prc2)
    array.reject {|ele| prc1.call(ele) && prc2.call(ele)}
end

p nand_select([-2, -4, 7, 6, 8], even , positive )
p nand_select([10, 11, 13, 12,], even , positive )
p nand_select(["potato", "ORANGE", "ASPARAGUS", "toMATO", "APPLE"], allUp , starWit_a )
p nand_select(["appp", "ACADEMY", "bootcamp", "Coding", "aAyehii"], allUp , starWit_a )

