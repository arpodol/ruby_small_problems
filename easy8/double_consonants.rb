# Understnding the Problem #
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Input
# - 1 string

# Output
# - 1 string

# Rules
# - String output has every consonant doubled
# - String output of vowels, punctuation and whitespaces shouldn't be doubled

# Example
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

def double_consonants (string)
  new_string = ''
  string.each_char do |character|
    if character =~ /[^aeiou]/ && character =~ /[A-Za-z]/
      new_string += character * 2
    else
      new_string += character
    end
  end
  new_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
