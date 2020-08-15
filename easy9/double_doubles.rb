=begin

~~Understanding the Problem~~#
Write a method that takes a number as an argument and
returns 2 times the number unless it is a double
number which should be returned as-is.

~~Input~~#
- 1 number

~~Output~~#
- 1 number

~~Rules~~#
- Double numbers are numbers with even number of digits
and whose left side digits are the exact same as the right
side digits.
- If double number, return number as-is.
- Otherwise return the number times 2.

~~Example~~#
twice(37) == 74
twice(44) == 44

=end


def twice (number)
  num_str_arr = number.to_s.split('')
  num_length = num_str_arr.length
  if num_length.even? && (num_str_arr[0..((num_length/2)-1)] == num_str_arr[num_length/2..-1])
    number
  else
    number * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10