def find_fibonacci_index_by_length(length)
  i = 2
  first_number = 1
  second_number = 1
  loop do
    i +=1
    new_number = first_number + second_number
    if new_number.to_s.length >= length
      return i
    end
    first_number = second_number
    second_number = new_number
  end
end


p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)