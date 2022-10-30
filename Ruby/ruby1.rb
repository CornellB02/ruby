# def erroneous_addition(x)
#     if x > 99999
#         print "Luckily Im a valid statement!"
#     else
#         print "The Ruby interpreter is about to be a complainy-pants!" + x
#     end
# end 

# erroneous_addition(Float::INFINITY)

# class StaticallyTypedError {
#     public erroneousAddition(int,x) {
#         if (x > 99999)
#             System.out.println("Luckily Im a valid statment");
#         else 
#             System.out.println("Java is already angry!" + x);

#             return "Java wont even let this method slide univoked!";
#     }
# }
# non reflective 
obj = Foo.new
obj.hello

#reflective 
# class_name = "Foo"
# method_name = :hello

# The program can inspect and modify source code constructions such as classes
# and methods at runtime. It can even convert strings or symbols matching
# # symbolic names of those constructions into references to them.
# obj = Object.const_get(class_name).new 
# obj.send method_name

# # The program can evaluate a string as if it were source code at runtime.
# eval "Foo.new.hello"

# primes = []

# num = 1
# while primes.count < 100
#   is_prime = true
#   (1..num).each do |idx|
#     if num % idx == 0
#       is_prime = false
#       break
#     end
#   end

#   if is_prime
#     primes << num
#   end
# end

# puts primes

# def prime?(num)
#     (1..num).each do |idx|
#       if num % idx == 0
#         return false
#       end
#     end
#   end
  
#   def primes(num_primes)
#     ps = []
#     num = 1
#     while ps.count < num_primes
#       primes << num if prime?(num)
#     end
#   end
  
#   if __FILE__ == $PROGRAM_NAME
#     puts primes(100)
#   end

# class NumbersClass
#     def answer_number
#       42
#     end
  
#     def loneliest_number
#       1
#     end
  
#     def numbers
#       [favorite_nmber, loneliest_number]
#     end
#   end

# exp(b, n) = b * exp(b, n - 1)

# smaller_exponent = power - 1
# exponent(base, power) = base * exponent(base, smaller_exponent)

# exponent(base, power) = base * base_to_the_smaller_exponent



