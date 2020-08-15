=begin

~~Understanding the Problem~~#
Write a method that takes a number as an argument and
returns the negative version of the number.

~~Input~~#
- 1 number

~~Output~~#
- 1 number

~~Rules~~#
- Positive numbers are returned negative.
- Negative numbers return the original number.
- 0 returns 0

~~Example~~#
negative(5) == -5
negative(-3) == -3
negative(0) == 0
=end

def negative(number)
  if number > 0
    number * -1
  else
    number
  end
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

# The absolute value method is concise but is somewhat unclear for the return
# value since it performs operations on the number irregardless if it is already
# negative or not.