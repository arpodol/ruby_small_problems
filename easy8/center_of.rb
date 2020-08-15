# Understnding the Problem #
# Write a method that takes a non-empty string and returns the middle character

# Input
# - 1 non-empty string

# Output
# - 1 or 2 characters

# Rules
# - If argument is odd length, return one character
# - If even character, return two characters

# Example
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'


def center_of(string)
  length = string.length
  if length.odd?
    return string[(length/2)]
  else
    return string[((length/2)-1)..length/2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'

