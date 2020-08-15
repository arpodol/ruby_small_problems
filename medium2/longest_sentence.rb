=begin

# ~~Understanding the Problem~~#
Write a program that reads the contents of a text file and then prints the longest sentence in the file based on
number of words.

# ~~Input~~#
- A text file

# ~~Output~~#
- The longest sentence and how many words are in it.

# ~~Rules~~#
- Sentences end with '.', '!', or '?'
- Any sequence of sentences that are not spaces or sentence-ending characters are treated as words.

#~~Example~~#
Gettysburg address: Longest sentence is 86 words (each -- counts as a word)
Frankenstein: Longest sentence is 157 words long.
=end

def longest_sentence(file)
  text = File.read(file)
  sentence_array = text.split(/[.!?]/)
  split_array = sentence_array.map do |sentence|
    sentence.split
  end
  longest_sentence = split_array.max{ |a, b| a.length <=> b.length}
  p "The longest sentence is #{longest_sentence.join(' ')}"
  p "The length is #{longest_sentence.length}"
end


longest_sentence("gettysburg_address.txt")
longest_sentence("frankenstein.txt")
=begin
# Further Exploration #
To find the largest paragraph, we would instead split on the paragraph/newline character. To find the longest word
we would, likely find it alot easier to just split on each and every space, strip out superfluous spaces and calculate
the longest.
=end


