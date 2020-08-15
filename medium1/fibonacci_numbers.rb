=begin

# ~~Understanding the Problem~~#
Write a method that computes the nth fibonacci number in the fibonacci sequence.
The fibonacci sequence is where F(n) = F(n - 1) + F(n - 2) where n > 2.


# ~~Input~~#
- Nth number to be computed.

# ~~Output~~#
- The nth fibonacci number.

# ~~Rules~~#
- Perform using recursion

#~~Example~~#
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

=begin
# Further Exploration #
Some issues that might impact usability are if the number is very large and takes too long to pass and handling negative
numbers if passed in. To repair them you can use tail recursion and sanitize the inputs to be a positive integer.
=end

