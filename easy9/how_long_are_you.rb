=begin

~~Understanding the Problem~~#
Write a method that takes a string and returns an array that
contains every word from the string with an appended space and
word length.

~~Input~~#
- 1 string

~~Output~~#
- 1 array

~~Rules~~#
- Words in the string are seperated by exactly one space
- Any substring of non-space characters is a word.

~~Example~~#
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

=end

def word_lengths(string)
  string_array = string.split(' ')
  string_array.map do |word|
    "#{word} #{word.length}"
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
    ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
    ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []







# Further Exploration
# I would argue it should return false since an empty string is the lack
# of a string therefore checking the "uppercaseness" is odd. Also, depending
# on the rest of a program, you might want the true or false.