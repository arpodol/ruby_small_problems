def reverse! (array)
  temp_array = []
  length = array.length
  length.times do
    temp_array.push(array.pop)
  end
  length.times do
    array.push(temp_array.shift)
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []


def reverse(array)
  reverse_array = []
  array.each do |entry|
    reverse_array.unshift(entry)
  end
  reverse_array
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true

def reverse_inject(array)
  array.inject([]) do |reverse_array,element|
    reverse_array.unshift(element)
    reverse_array
  end
end


p reverse_inject([1,2,3,4]) == [4,3,2,1]          # => true