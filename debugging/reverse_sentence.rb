# BUG DESCRIPTION
# The reverse_sentence method should return a new string with the words of the arguments in reverse order without
# using built in reverse methods.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'