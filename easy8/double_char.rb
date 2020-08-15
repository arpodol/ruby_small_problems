# Understnding the Problem #
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Input
# - 1 string

# Output
# - 1 string

# Rules
# - String output has every character doubled

# Example
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''


def repeater (string)
  new_string = ''
  string_array = string.split('')
  string_array.each do |character|
    new_string += character * 2
  end
  new_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
