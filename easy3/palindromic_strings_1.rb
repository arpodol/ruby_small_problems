def palindrome?(string)
  string.reverse == string
end
def palindrome_array?(array)
  array.reverse == array
end

def palindrome_true?(data)
  data.reverse == data
end



p palindrome_array?([1, 2, 3])
p palindrome_array?([1, 2, 1])
puts
p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')
puts
p palindrome_true?([1, 2, 3])
p palindrome_true?([1, 2, 1])
p palindrome_true?('madam')
p palindrome_true?('Madam')
p palindrome_true?("madam i'm adam")
p palindrome_true?('356653')