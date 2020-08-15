def multiply_list(array_1, array_2)
  result_array = []
  array_1.length.times do |index|
      result_array[index] = array_1[index] * array_2[index]
  end
  result_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list_compact(array_1, array_2)
  array_1.zip(array_2).map{|x, y| x * y}
end

p multiply_list_compact([3, 5, 7], [9, 10, 11]) == [27, 50, 77]