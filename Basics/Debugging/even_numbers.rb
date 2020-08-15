numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]

# Map returns an enumerable of the same size as
# the one it is called on with the return value of
# each block. Select on the other hand, returns an
# array of values for which the block returned truthy.