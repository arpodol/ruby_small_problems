def swap(string)
  word_array = string.split(' ')
  word_array.each { |word| word[0], word[-1] = word[-1], word[0]}
  word_array.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')


# Advanced
# The launch school solution passes word into the swap_first_last_characters
# because we need to mutate the word rather than just flip some characters.

