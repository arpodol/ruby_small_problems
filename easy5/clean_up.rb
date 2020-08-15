def cleanup(string)
  string.gsub(/[^A-z]+/, ' ')
end

p cleanup("---what's my +*& line?") ==' what s my line '

# further exploration

def cleanup_no_regex(string)
  char_array = string.split('')
  alphabet_array = [*('A'..'Z'),*('a'..'z')]
  char_array.map! { |char| alphabet_array.include?(char) ? char : ' '}
  char_array.join('').squeeze
end

p cleanup_no_regex("---what's my +*& line?") ==' what s my line '