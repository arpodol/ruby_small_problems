def substrings_at_start(string)
  string_array = []
  string.length.times do | index |
    string_array << string[0..index]
  end
  string_array
end


def substrings(string)
  substring_array = []
  string.length.times do | index |
    substring_array << substrings_at_start(string[index..-1])
  end
  substring_array.flatten

end


p substrings('abcde')
p substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde',
    'b', 'bc', 'bcd', 'bcde',
    'c', 'cd', 'cde',
    'd', 'de',
    'e'
]
