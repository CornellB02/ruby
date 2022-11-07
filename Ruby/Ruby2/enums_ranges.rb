# arr = "Harlem"

# puts arr.index("e")

# arr1 = [2, 3, 4, 5]
# print arr1
# puts 
# arr1.reverse!
# print arr1
# puts

# str = "hello"
# puts str.reverse


# let = ['a','b','c','d','e']
# print arr[1...4]

# phr = "follow the money"
# ph = phr.split(" ")
# print ph.join("ass")
# puts

# sen = ['hi','money','hello','join','split']
# puts sen.join('smd')

# months = ['Jan', 'Jun', 'March', 'April', 'May']

# i = 0 
# # while i < months.length 
# #     month = months[i]
# #     puts month 

# #     i += 1
# # end

# # months.each { |month| puts month} #best for single method 

# # months.each_with_index do |month, i| # best for multple lines 
# #     puts month
# #     puts i
# #     puts "|||"
# # end

# # sn = "hello world"
# # puts word = sn.split(" ")
# # word.each_with_index do |char, i|
# #     puts i
# #     puts char
# # end
# # nums = [1,2,3,4,5,6]
# # (84...100).each {|ele| puts ele}

# # def fizzBuzz(max)
# #     arr = []

# #     (1..max).each do |num|
# #         if num % 3 == 0 && num % 5 != 0
# #             arr.push(num)
# #         end
# #         if num % 3 != 0 && num % 5 == 0
# #             arr.push(num)
# #         end
# #     end
# #     return arr
# # end

# # print fizzBuzz(5)

# # (0..4).each{puts 'num'}

# # 4.times { puts "hi"}

# def abbSentence(sent)
#     words = sent.split(" ")
#     newWord = []

#     words.each do |word|
#         if word.length > 4
#             newWor = abbWord(word)
#             newWord << newWor
#         else 
#             newWord << word

#         end
#     end
#     newSent = newWord.join(" ")
# end

# def abbWord(word)
#     vowels = "aeiou"
#     noVowels = ""

#     word.each_char do |char|
#         if !vowels.include?(char)
#             noVowels += char

#     end
# end

#     return noVowels
# end


# puts abbSentence ("follow the money")

# (1..4).each do |num|
#     (1..3).each do |num2|
#         puts num.to_s + " " + num2.to_s
#     end

# end

# arr = ["w","e","r","d"]

# arr.each do |ele|
#     arr.each do |ele2|
#         puts ele + ele2
#     end
# end



# arr = ["w","e","r","d"]

# arr.each_with_index do |ele, i|
#     arr.each_with_index do |ele2, j|
#         if j > i 
            
#             puts ele + ele2
#             puts i.to_s + " " + j.to_s
#             puts "===="
#         end

#     end

# end

arr1 =[
    ["a", 'b', 'v'],
    ['w', 'hh'],
    ['c', 'o', 'p']
]


# subArr = arr1[1][0]
# print subArr
# puts 

10.times { |i| puts "hello #{i}" }


# arr1.each do |subArr|
#     print subArr
#     puts
#     subArr.each do |ele|
#         puts ele
#     end
# end