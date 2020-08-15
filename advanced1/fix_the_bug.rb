=begin

# ~~Understanding the Problem~~#
Find the bug in the code and both fix and explain what the issue was.

# ~~Input~~#
- An array

# ~~Output~~#
- An array

# ~~Rules~~#

#~~Example~~#
There is a bug:
Expected to print:
[]
[21]
[9, 16]
[25, 36, 49]

For:
p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

But it instead returns
[]
nil
nil
nil



=end
def my_method(array)
  if array.empty?
    []
  elsif array.size != 1
  array.map do |value|
    value * value
  end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# The fix is to add a conditional to the elsif to check for the case where the array size is not larger than
# 1. It printed out what it had before because for the empty array it returned at the first "if array.empty?".
# However for the other three cases, when the program flow evaluated the elsif, it didn't have anything to
# check and thus returned nil.

=begin

=end


