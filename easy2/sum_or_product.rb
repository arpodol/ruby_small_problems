puts('Please enter an integer greater than 0:')
integer = gets.chomp().to_i

integer_array = [*1..integer]
puts ("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp
if operation == 's'
  sum_total = integer_array.inject(:+)
  puts ("The sum of the integers between 1 and #{integer} is #{sum_total}.")
elsif operation == 'p'
  product_total = integer_array.inject(:*)
  puts ("The product of the integers between 1 and #{integer} is #{product_total}.")
else
  puts "Invalid operation"
end

