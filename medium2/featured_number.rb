=begin

# ~~Understanding the Problem~~#
Write a method that takes a single integer as an argument and returns the next featured number
greater than the argument.

# ~~Input~~#
- An integer

# ~~Output~~#
- An integer that is the next featured number greater than the argument.

# ~~Rules~~#
- A featured number is an odd number that is a multiple of 7 and whose digits occur exactly once each.
- Print an error message if there is no next featured number.

#~~Example~~#
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those
=end

def featured(number)
  featured_number = 0
  if number < 9_876_543_210
    (number+1).upto(9_876_543_210) do |loop_index|
      if loop_index % 2 == 1
        if loop_index % 7 == 0
          unless loop_index.to_s.split('').uniq!
            featured_number = loop_index
            break
          end
        end
      end
    end
  end
  if featured_number != 0
    p "The featured number is #{featured_number}"
    featured_number
  else
    puts "There is no next feature number."
    nil
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those

=begin
# Further Exploration #

=end
