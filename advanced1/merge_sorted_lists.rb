=begin

# ~~Understanding the Problem~~#
Write a method that takes two sorted arrays as arguments and returns a new array that contains all the
elements from the two arrays in sorted order.

# ~~Input~~#
- Two sorted arrays

# ~~Output~~#
- One sorted array that is a combination of both arrays.

# ~~Rules~~#
- Cannot merge the arrays then sort.
- Cannot mutate input arrays.

#~~Example~~#

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

=end

def merge (array1, array2)
  array1_index = 0
  array2_index = 0
  merged_array = []
  while merged_array.length < array1.size + array2.size
    case array1[array1_index] <=> array2[array2_index]
      when -1
        merged_array.push(array1[array1_index])
        array1_index += 1
      when 0
        array2_index +=1
      when 1
        merged_array.push(array2[array2_index])
        array2_index += 1
      when nil
        if array1[array1_index] == nil
          merged_array.push(array2[array2_index])
          array2_index += 1
        else
          merged_array.push(array1[array1_index])
          array1_index += 1
        end
      else
        p "Dont go here"
    end
  end
  merged_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]


=begin
# Further Exploration #

=end

