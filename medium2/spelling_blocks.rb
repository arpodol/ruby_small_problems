=begin

# ~~Understanding the Problem~~#
Write a program that takes in a word and sees if it can be built using the given blocks.

# ~~Input~~#
- A string

# ~~Output~~#
- The boolean telling whether or not the word can be built with the blocks.

# ~~Rules~~#
- Each block can only be used once.
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M


#~~Example~~#
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
=end

def block_word?(word)
block_hash = {:B => :O,
              :G => :T,
              :V => :I,
              :X => :K,
              :R => :E,
              :L => :Y,
              :D => :Q,
              :F => :S,
              :Z => :M,
              :C => :P,
              :J => :W,
              :N => :A,
              :H => :U
}
  word.split('').all? do |letter|
    if block_hash.key?(letter.upcase.to_sym)
      block_hash.delete(letter.upcase.to_sym)
    elsif block_hash.value?(letter.upcase.to_sym)
      block_hash.delete_if{|key, value| value == letter.upcase.to_sym}
    else
      nil
    end
  end
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
=begin
# Further Exploration #
The method I used was a hash. This complicates things a bit when checking for if a block is
available to be used. My method also relies editing the original hash. One way to avoid that would
be to use count akin to the example solution.
=end


