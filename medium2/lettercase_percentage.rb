=begin

# ~~Understanding the Problem~~#
Write a method that takes a string and returns a hash that reports the percentages of characters.

# ~~Input~~#
- A string

# ~~Output~~#
- A hash with three entries: the percentage of lowercase characters, the percentage of uppercase characters, and
the percentage that are neither.

# ~~Rules~~#
- The string will always contain at lease one character.


#~~Example~~#
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
=end

def letter_percentages(string)
  character_array = string.split('')
  string_length = character_array.length
  lowercase_count = 0
  uppercase_count = 0
  neither_count = 0
  character_array.each do |character|
    if character =~ /[A-Z]/
      uppercase_count += 1
    elsif character =~ /[a-z]/
      lowercase_count += 1
    else
      neither_count += 1
    end
  end
  {:lowercase => (lowercase_count*100)/string_length.to_f,
   :uppercase => (uppercase_count*100)/string_length.to_f,
   :neither => (neither_count*100)/string_length.to_f}
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

=begin
# Further Exploration #

=end


