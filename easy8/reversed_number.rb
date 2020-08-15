# Understnding the Problem #
# Write a method that takes a positive integer and returns the positive integer with its digits reversed

# Input
# - 1 positive integer

# Output
# - 1 positive integer

# Rules
# - Zeros get dropped
# - Digits reversed

# Example
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # Note that zeros get dropped!

def reversed_number(integer)
  int_string = integer.to_s
  int_string.reverse!
  int_string.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!

