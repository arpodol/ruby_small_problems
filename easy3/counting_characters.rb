puts "Please write word or multiple words:"
phrase = gets.chomp

phrase_stripped = phrase.delete(' ')
puts "There are #{phrase_stripped.length} characters in \"#{phrase}\""