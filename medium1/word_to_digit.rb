=begin

# ~~Understanding the Problem~~#
Write a method that takes a sentence string as an input and returns the string with any sequence of 'zero'-'nine'
converted to string of digits.

# ~~Input~~#
- 1 sentence string

# ~~Output~~#
- 1 sentence string with spelled out numbers replaced by numeral version.

# ~~Rules~~#
- Only 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', and 'nine'

#~~Example~~#
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=end

def word_to_digit(sentence)
  number_hash = {'zero' => '0',
                 'one' => '1',
                 'two' => '2',
                 'three' => '3',
                 'four' => '4',
                 'five' => '5',
                 'six' => '6',
                 'seven' => '7',
                 'eight' => '8',
                 'nine' => '9'
  }
  number_hash.each_pair do |key, value|
    sentence.gsub!(/#{key}/, value)
  end
  sentence.gsub!(/(?<=\d)(\s)(?=\d)/,'')
  sentence.gsub!(/(\d{3})(\d{3})(\d{4})/,  '(\1) \2-\3')
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Please call me at one two three four five six seven eight nine zero. Thanks.')
=begin
# Further Exploration #

- Some look aheads, look behinds and a capture with a regex helped strip the spaces.
- Using numbered captures in regex, the phone number is formatted as expected.

=end

