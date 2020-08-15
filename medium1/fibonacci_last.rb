=begin

# ~~Understanding the Problem~~#
Write a method that computes the last digit of the nth fibonacci number in the fibonacci sequence.
The fibonacci sequence is where F(n) = F(n - 1) + F(n - 2) where n > 2. This time without recursion.

# ~~Input~~#
- Nth number to be computed.

# ~~Output~~#
- The nth fibonacci number.

# ~~Rules~~#
-

#~~Example~~#
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

=end

def fibonacci_last(n)
  iteration = 0
  num1 = 1
  num2 = 1
  while iteration < n - 2 # Reduce loop by 2 to account for first two iterations
    num1, num2 = num2, (num1 + num2) % 10
    iteration+=1
  end
  num2
end

p fibonacci_last(15)  == 0       # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)   == 5      # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)   == 5     # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)  == 1  # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) == 4 # -> 4


=begin
# Further Exploration #
I examined the last digits of the fibonacci sequence looking for another instance of two 1's in a row which
would cause the pattern to repeat. I found such a repeat around 60 numbers in. Thus, every 60 fibonacci
numbers repeat the same last number.
=end

def fibonacci_last_ultimate(n)
  pattern_array = [0, 1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7, 7, 4, 1, 5, 6, 1, 7, 8, 5, 3, 8, 1,
  9, 0, 9, 9, 8, 7, 5, 2, 7, 9, 6, 5, 1, 6, 7, 3, 0, 3, 3, 6, 9, 5, 4, 9, 3, 2, 5, 7, 2, 9, 1, 0]
  pattern_array[n % 60]
end
p fibonacci_last_ultimate(15)  == 0       # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last_ultimate(20)   == 5      # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last_ultimate(100)   == 5     # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last_ultimate(100_001)  == 1  # -> 1 (this is a 20899 digit number)
p fibonacci_last_ultimate(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
p fibonacci_last_ultimate(123456789) == 4 # -> 4
p fibonacci_last_ultimate(123456789987745) == 5