num_array = []

puts "==> Enter the 1st number:"
number_1 = gets.chomp().to_i
num_array << number_1
puts "==> Enter the 2nd number:"
number_2 = gets.chomp().to_i
num_array << number_2
puts "==> Enter the 3rd number:"
number_3 = gets.chomp().to_i
num_array << number_3
puts "==> Enter the 4th number:"
number_4 = gets.chomp().to_i
num_array << number_4
puts "==> Enter the 5th number:"
number_5 = gets.chomp().to_i
num_array << number_5
puts "==> Enter the last number:"
number_last = gets.chomp().to_i

if num_array.include?(number_last)
  puts "The number #{number_last} appears in #{num_array}"
else
  puts "The number #{number_last} does not appear in #{num_array}"
end
