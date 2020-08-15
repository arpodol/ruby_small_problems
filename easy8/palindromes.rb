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


def palindromes(string)
  palindrome_array = []
  string_array = substrings(string)
  for sub_string in string_array
    if sub_string == sub_string.reverse && sub_string.length > 1
      palindrome_array << sub_string
    end
  end
  palindrome_array
end

# To ignore non alphanumeric characters, we strip the input using gsub and regex
def alphanumeric_palindromes(string)
  palindrome_array = []
  stripped_string = string.gsub(/[^0-9a-z ]/, '')
  string_array = substrings(stripped_string)
  for sub_string in string_array
    if sub_string == sub_string.reverse && sub_string.length > 1
      palindrome_array << sub_string
    end
  end
  palindrome_array
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
    'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
    '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

p alphanumeric_palindromes('hello-madam-did-madam-goodbye') == [
    'll', 'madam', 'madamdidmadam', 'ada',
    'adamdidmada', 'damdidmad', 'amdidma', 'mdidm', 'did',
     'madam', 'ada', 'oo']