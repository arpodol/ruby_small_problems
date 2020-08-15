=begin

# ~~Understanding the Problem~~#
Write a method that computes the difference between the square of the sum of the first n positive integers
and the sum of the squares of the first n positive integers.

# ~~Input~~#
- An integer

# ~~Output~~#
- An integer representing the difference between the square of the sum of the first n positive integers and
the sum of the squares of the first n positive integers.

# ~~Rules~~#
-

#~~Example~~#
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

=end

def sum_square_difference(integer)
  first_sum = ((0..integer).inject(:+)) ** 2
  second_sum = (0..integer).inject{|rolling_total, num| rolling_total + num ** 2}
  first_sum - second_sum
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

=begin
# Further Exploration #

=end
