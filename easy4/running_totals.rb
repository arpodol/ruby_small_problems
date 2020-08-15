def running_total(array)
  running_array = []
  array.each_with_index do |value, index|
    if index.zero?
      running_array[index] = value
    else
      running_array[index] = running_array[index-1] + value
    end
  end
  running_array
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])