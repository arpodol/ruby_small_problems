def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

# The reason we dont see 50 is because number is a
# string. Thus when the multiply_by_five method is
# invoked, string is multiplied by 5 resulting
# in 5 copies of the string. To fix it, one would
# need to add .to_i after gets.chomp.