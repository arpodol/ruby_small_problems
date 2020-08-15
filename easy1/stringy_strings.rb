def stringy(int)
  string = '10' * (int/2)
  string.concat('1') if int.odd?
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'