def xor?(bool1, bool2)
  bool1 != bool2
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)

# XOR is not a short circuit operation since you need to know both
# values to determine if they are the same