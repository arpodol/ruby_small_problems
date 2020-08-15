=begin

# ~~Understanding the Problem~~#
Write a method that rotates an the last n digits of a number.

# ~~Input~~#
- 1 integer to be rotated
- 1 integer for number of digits to be rotated.

# ~~Output~~#
- 1 integer

# ~~Rules~~#
- Rotating just 1 digit results in the original number.
- n is always a positive integer.

#~~Example~~#
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

