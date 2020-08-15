def substrings_at_start(string)
  string_array = []
  string.length.times do | index |
    string_array << string[0..index]
  end
  string_array
end



p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']