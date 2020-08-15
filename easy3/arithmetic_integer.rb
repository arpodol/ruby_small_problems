puts "==> Enter the first number:"
first_number = gets.chomp.to_f
puts "==> Enter the second number:"
second_number = gets.chomp.to_f

puts ("==> #{first_number} + #{second_number} = #{first_number + second_number}")
puts ("==> #{first_number} - #{second_number} = #{first_number - second_number}")
puts ("==> #{first_number} * #{second_number} = #{first_number * second_number}")
puts ("==> #{first_number} / #{second_number} = #{first_number / second_number}")
puts ("==> #{first_number} % #{second_number} = #{first_number % second_number}")
puts ("==> #{first_number} ** #{second_number} = #{first_number ** second_number}")

# If one were to use floats, the results would be a bit longer and some cases would be very long.