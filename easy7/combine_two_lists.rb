def interleave (array1, array2)
  combined_array = []
  array1.length.times do
    combined_array.push(array1.shift)
    combined_array.push(array2.shift)
  end
  combined_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave_zip (array1, array2)
  array_chunks = array1.zip(array2)
  combined_array = array_chunks[0] + array_chunks[1] + array_chunks[2]

end

p interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']