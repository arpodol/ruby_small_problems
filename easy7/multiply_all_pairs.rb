def multiply_all_pairs(array_1, array_2)
  product_array = []
  array_1.length.times do |index_1|
    array_2.length.times do |index_2|
      product_array << array_1[index_1] * array_2[index_2]
    end
  end
  product_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# My solution was very close to the given noncompact solution but instead I used length.times do
# which requires me to be more verbose when I pull the data.