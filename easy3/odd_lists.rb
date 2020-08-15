def oddities(array)
  odd_array = []
  array.each_with_index do |value, key|
    odd_array.push(value) if key.even?
  end
  return odd_array
end

def eventies(array)
  odd_array = []
  array.each_with_index do |value, key|
    odd_array.push(value) if key.odd?
  end
  return odd_array
end

def oddities2(array)
  odd_array = []
  index = 0
  until index >= array.length
    odd_array.push(array[index])
    index +=2
  end
  odd_array
end

# doesnt work too well when multiple entries exist that are both even and odd
def oddities3(array)
  array.select do |index|
    array.index(index).even?
  end
end

p oddities3([2, 3, 4, 5, 6])
p oddities2(['abc', 'def'])
p oddities2([123])
p oddities2([])