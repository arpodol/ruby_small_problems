def word_sizes(word_string)
  letter_hash = Hash.new(0)
  word_array = word_string.split(' ')
  word_array.each do |word|
    letter_hash[word.length] += 1
  end
  letter_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}