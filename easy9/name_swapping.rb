=begin

~~Understanding the Problem~~#
Write a method that takes a first name, a space, and a last name as
a single string and returns a string that contains the last name, a comma,
and the first name.

~~Input~~#
- 1 string

~~Output~~#
- 1 boolean

~~Rules~~#
-

~~Example~~#
swap_name('Joe Roberts') == 'Roberts, Joe'
=end

def swap_name(string)
  string_array = string.split(' ')
  "#{string_array[1]}, #{string_array[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'



