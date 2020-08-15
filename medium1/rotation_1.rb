=begin

# ~~Understanding the Problem~~#
Write a method that rotates an array by moving the first element to the
end of the array.

# ~~Input~~#
- 1 array

# ~~Output~~#
- 1 array

# ~~Rules~~#
- Original array shall not be modified

#~~Example~~#
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

=end

def rotate_array(array)
  new_array = array.clone
  new_array.push(new_array.shift)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true


# Further exploration
# Create rotate string function using prior rotate array method.
def rotate_string(string)
  array = string.split('')
  rotate_array(array).join('')
end


test_string = 'test'
p rotate_string(test_string) == 'estt'
p test_string == 'test'


# Create rotate integer function using prior methods.
def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

test_int = 12345
p rotate_integer(test_int) == 23451
p test_int == 12345

