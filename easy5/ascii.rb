def ascii_value(string)
  string.split('').inject(0) {|total, object| total + object.ord() }
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')

# advanced version The integer version is #chr. If you use a longer string than
# you get the value back of the first character.
char = 'a'
char_2 = 'bc'
p char.ord.chr == char
p char_2.ord.chr