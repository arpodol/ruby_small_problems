def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)
p palindromic_number?(0220)

# If there are 0's at the front, it disrupts the test. One could use something
# like '0%o' to append a 0 on the front prior to using to_s but
# it seems one needs to know how many zeroes are in the front to handle
# it properly.

