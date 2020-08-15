=begin

# ~~Understanding the Problem~~#
Write a method that takes an integer and returns the
maximum rotation of the integer.

# ~~Input~~#
- 1 integer to be rotated


# ~~Output~~#
- 1 integer

# ~~Rules~~#
- To maximally rotate the integer, the whole integer is rotated. Then the first digit
is fixed in place and the remaining digits are rotated. The first two digits are fixed
in place and the remaining are rotated etc until the final two are rotated.

#~~Example~~#
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

=end
def rotate_array(array)
  new_array = array.clone
  new_array.push(new_array.shift)
end

def rotate_rightmost_digits(int, n_digits)
  string_array = int.to_s.split('')
  rotated_str_arr= string_array[0...-n_digits] + rotate_array(string_array[-n_digits..-1])
  rotated_str_arr.join('').to_i
end

def max_rotation(int)
  length = int.to_s.size
  (0..(length-1)).each do | index |
    int = rotate_rightmost_digits(int, (length - index))
  end
  int
end
p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

=begin
# Further exploration
Assuming I didn't have the rotate_rightmost_digits and rotate_array, I would be very tempted
to write one giant function that solved the problem rather than working in manageable
steps. The 3 part approach makes the problem much easier to understand and work through.
=end
