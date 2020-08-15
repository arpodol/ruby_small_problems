def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

=begin
The return value is incorrect since product is initially 0
so multiplying any number by that will be 0. Thus, the digits.each block will
just end up multiplying each digit by 0 ending in 0. This can be fixed by setting product = 1.

=end