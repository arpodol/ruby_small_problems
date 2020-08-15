=begin

~~Understanding the Problem~~#
Write a method that takes a string and returns boolean
if all strings are uppercase

~~Input~~#
- 1 string

~~Output~~#
- 1 boolean

~~Rules~~#
- Ignore nonalphabetic characters

~~Example~~#
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


# Further Exploration
# I would argue it should return false since an empty string is the lack
# of a string therefore checking the "uppercaseness" is odd. Also, depending
# on the rest of a program, you might want the true or false.