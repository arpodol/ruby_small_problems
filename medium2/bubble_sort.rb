=begin

# ~~Understanding the Problem~~#
Write a method that takes an array as an argument and sorts it using the bubble sort algorithm.

# ~~Input~~#
- An array

# ~~Output~~#
- A sorted array.

# ~~Rules~~#
- Must use the bubble sort algorithm.

#~~Example~~#
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=end

def bubble_sort!(array)
  0.upto(array.length) do |iteration|
    swapped = false
    0.upto(array.length - iteration) do |index|
      if (array[index] <=> array[index + 1]) == 1
        array[index], array[index + 1] =  array[index + 1],  array[index]
        swapped = true
      end
    end
    break if swapped == false
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=begin
# Further Exploration #

=end
