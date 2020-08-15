# Understnding the Problem #
# Given a range of numbers, print every number between them except put
# fizz if it is divisible by 3, buzz if it's divisible by 5 and fizzbuzz if divisible by both


# Input
# - 2 numbers

# Output
# - Printout of strings and integers

# Rules
# - Print out "Fizz" if divisible by 3
# - Print out "Buzz" if divisible by 5
# - Print out "FizzBuzz" if divisible by 15
# - Print out integer otherwise

# Example
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

def fizzbuzz(num1,num2)
  for i in num1..num2 do
    if i%15 == 0
      puts "FizzBuzz"
    elsif i%3 == 0
      puts "Fizz"
    elsif i%5 == 0
      puts "Buzz"
    else
      puts i
    end
  end
end

fizzbuzz(1,15)

