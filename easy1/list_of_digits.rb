def digit_list(number)
  string_array = number.to_s.split('')
  string_array.map{ |x| x.to_i}
end

puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)