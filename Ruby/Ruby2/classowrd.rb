# def repeat(message, num=1)
#     message * num 

# end

# p repeat("hi")
# p repeat("hi",3)

# def greet(person1, person2=nil)
#     if person2.nil?
#         p "Hey " + person1
#     else 
#         p "Hey " + person1 + " and " + person2
#     end

# end

# greet("Chao")
# greet("Chap","Lilly")

# def method(hash)
#     p hash 
# end

# method({"location" => "SF", "color" => "red", "size" => 100})


# def modify_string(str, options={"upper"=>false, "repeats"=>1})
#     str.upcase! if options["upper"]
#     p str * options["repeats"]
# end

# modify_string("bye")   # => "bye"
# modify_string("bye", "upper"=>true, "repeats"=>3)

def repeat(str, n=1)
    p str * n
end

repeat("hi", 3)
repeat("hi")

def print_h(name, hash)
    p name 
    p hash 
end

print_h("cornell","city"=>"ny", "color"=>"money")


def method(arg1, arg2, *otherargs)
    p arg1
    p arg2
    p otherargs
end

method("1","b","d","f","s","u","p")

def greet(firstName, lastName)
    p "hey " + firstName + " your lastname is " + lastName
end

names = ["cj", "cornell"]
greet(*names)

arr1 = ["a","b"]
arr2 = ["d", "e"]
arr3 = [*arr1, "c", *arr2]
p arr3

oldHash = { a: 1, b: 2}
newHash = { **oldHash, c: 3}
p newHash

p ([11, 7, 2, 4].inject do |acc, el|
    if el < acc
        el
    else
        acc
    end
end) # => 2

def say_hello
    message = "hello"
    p message
end

say_hello

num = 5

begin
  puts "dividing 10 by #{num}"
  ans = 10 / num
  puts "the answer is #{ans}"
rescue
  puts "There was an error with that division."
end

puts "--------"
puts "finished"

def format_name(first, last)
    if !(first.instance_of?(String) && last.instance_of?(String))
      raise "arguments must be strings"
    end
  
    first.capitalize + " " + last.capitalize
  end
  
 p format_name("grace", "hopper") # => "Grace Hopper"
 p format_name(42, true)   
#   begin
#     puts format_name(first_name, last_name)
#   rescue
#     # do stuff to rescue the "arguments must be strings" exception...
#     puts "there was an exception :("
#   end

def prime?(num)
    return false if num < 2
  
    (2...num).each do |i|
      return false if num % i == 0
    end
  
    true
  end

  