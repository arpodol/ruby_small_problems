=begin

# ~~Understanding the Problem~~#
Write a method that takes an array and sorts it using merge sort.

# ~~Input~~#
One array

# ~~Output~~#
A sorted array.

# ~~Rules~~#
- Only one type of data
- Either all numbers or strings.
- Use merge sort algorithm

#~~Example~~#
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


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


def merge_sort(array)
  return array if array.length == 1
  first_half = array.length / 2
  array1 = array[0..first_half-1]
  array2 = array[first_half..array.length - 1]
  sort_array_1 = merge_sort(array1)
  sort_array_2 = merge_sort(array2)
  merge(sort_array_1, sort_array_2)
end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


=begin
# Further Exploration





=end

def merge_sort_nonrecursive(array)
  split_array = []
  array.each_slice(1){ |sub_slice| split_array.push(sub_slice)}
  temp_array_2 = split_array
  loop do
    break if temp_array_2[0].length == array.length
    temp_array = []
    temp_array_2.each_slice(2) do |slice1, slice2|
      if slice1 && slice2
        temp_array.push(merge(slice1, slice2))
      else
        temp_array.push(slice1)
      end
    end
    temp_array_2 = temp_array
  end
  temp_array_2.flatten
end

p merge_sort_nonrecursive([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort_nonrecursive([5, 3]) == [3, 5]
p merge_sort_nonrecursive([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort_nonrecursive(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort_nonrecursive([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
