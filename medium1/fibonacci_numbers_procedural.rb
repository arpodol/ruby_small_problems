=begin

# ~~Understanding the Problem~~#
Write a method that computes the nth fibonacci number in the fibonacci sequence.
The fibonacci sequence is where F(n) = F(n - 1) + F(n - 2) where n > 2. This time without recursion.

# ~~Input~~#
- Nth number to be computed.

# ~~Output~~#
- The nth fibonacci number.

# ~~Rules~~#
- Perform procedurally.

#~~Example~~#
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

=end

def fibonacci(n)
  iteration = 0
  num1 = 1
  num2 = 1
  while iteration < n - 2 # Reduce loop by 2 to account for first two iterations
    num1, num2 = num2, num1 + num2
    iteration+=1
  end
  num2
end

p fibonacci(20) == 6765
p fibonacci(20)
p fibonacci(100) == 354224848179261915075
p fibonacci(100)
p fibonacci(100_001) # => 4202692702.....8285979669707537501


=begin
# Further Exploration #


=end

