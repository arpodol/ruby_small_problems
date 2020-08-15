def halvsies(array)
  halfway_point = (array.length/2.0).ceil
  first_array = array[0,halfway_point]
  second_array = array[halfway_point.. -1]
  split_array = [first_array,second_array]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# My solution divides by 2.0 because for odd length arrays, you need to grab the middle element
# to place in the first array. If one were to use 2, it would automatically round down.