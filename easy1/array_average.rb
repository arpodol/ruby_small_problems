def average(array)
  sum = 0
  array.map { |x| sum += x}
  return sum / array.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40