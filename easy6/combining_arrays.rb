def merge(array1, array2)
  merged_array = []
  array1.each do |integer|
    merged_array.push(integer) unless merged_array.include?(integer)
  end
  array2.each do |integer|
    merged_array.push(integer) unless merged_array.include?(integer)
  end
  merged_array
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
