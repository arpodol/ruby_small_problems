=begin

~~Understanding the Problem~~#
Write a method that takes a number as an argument and
returns an array of all integers in sequence between 1 and
the argument.

~~Input~~#
- 1 number

~~Output~~#
- 1 array

~~Rules~~#
- Argument will always be valid integer greater than 0.

~~Example~~#
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
=end

def sequence(number)
  number > 0 ? (1..number).to_a  : (number..-1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

p sequence(-3) == [-3, -2, -1]

# Further Exploration
# I would make the method return an empty array if the argument is not greater than 0.
# There are no changes in that case. However, if we wanted to create a sequence to the number
# just on the negative side of the number scale we could add in code as above.
