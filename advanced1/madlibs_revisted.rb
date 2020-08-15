=begin

# ~~Understanding the Problem~~#
Make a madlibs program that reads in some text from a text file that you have created and plugs in a selection of
randomized nouns, verbs, adjectives, and adverbs into the text and prints it.

# ~~Input~~#
- Text file

# ~~Output~~#
- Text with random words of the appropriate types placed into the text.

# ~~Rules~~#
- Text data comes from a file or external source.
- Build the lists of nouns, verbs, adjectives and adverbs directly into the program.

#~~Example~~#
Output:
The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.

=end

WORD_HASH = {:NOUN => ['cat', 'dog', 'squirrel', 'ball'],
             :VERB => ['licks', 'looks around', 'eats'],
             :ADJECTIVE => ['sleepy', 'brown', 'yellow', 'foolish'],
             :ADVERB => ['lazily', 'slowly', 'noisily']}

def madblibs_revisited(file)
  text = File.read(file)
  text.each_line do |line|
    line.gsub!(/ADJECTIVE|NOUN|VERB|ADVERB/) do |word|
      if word == 'ADJECTIVE'
        WORD_HASH[:ADJECTIVE].sample
      elsif word == 'NOUN'
      WORD_HASH[:NOUN].sample
      elsif word == 'VERB'
        WORD_HASH[:VERB].sample
      elsif word == 'ADVERB'
        WORD_HASH[:ADVERB].sample
      end
    end
    puts  line
  end
end

madblibs_revisited('lazy_dog.txt')


=begin
# Further Exploration #

=end
