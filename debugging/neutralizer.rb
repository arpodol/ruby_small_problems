# Bug issue: The neutralize function doesn't remove all negative words.

def neutralize(sentence)
  words = sentence.split(' ')
  words.select! do |word|
    !negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# This happens because when using each, if you delete an entry, the next iteration of each will go to the next index
# but if the array has been shrunk by 1, each effectively skips over the entry after the deleted one. This would
# manifest itself in cases where two words to be removed are next to each other.

