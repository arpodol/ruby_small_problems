=begin

~~Understanding the Problem~~#
Write a method that takes 2 integers as arguments. The first argument is a count
and the second is the first number of the sequence. It will return an array that
contains the same number of elements as the count argument while the values
of each element will be multiples of the starting number.

~~Input~~#
- 2 integers

~~Output~~#
- 1 array

~~Rules~~#
- Count argument will be 0 or greater and the starting number can be
any integer.
- If count is 0, an empty array should be returned.

~~Example~~#
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
=end

def sequence(count, first_number)
  array = []
  (1..count).each { | factor |  array << (factor * first_number)}
  array
end



p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []



