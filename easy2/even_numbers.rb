num = 1

while num <= 99
  puts(num) if num.even?
  num += 1
end

# Second attempt
num_array = [*1..99]

num_array.select! { |numeral| numeral % 2 == 0}

num_array.each {|even_number| puts(even_number)}