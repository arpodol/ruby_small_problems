num = 1

while num <= 99
  puts(num) if num.odd?
  num += 1
end

# Second attempt
num_array = [*1..99]

num_array.select! { |numeral| numeral % 2 == 1}

num_array.each {|odd_number| puts(odd_number)}