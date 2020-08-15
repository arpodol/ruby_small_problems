def string_to_integer(string)
  int = 0
  alpha_num_hash = { '0' => 0,
                     '1' => 1,
                     '2' => 2,
                     '3' => 3,
                     '4' => 4,
                     '5' => 5,
                     '6' => 6,
                     '7' => 7,
                     '8' => 8,
                     '9' => 9 }
  string_arr = string.split('').map { |value| alpha_num_hash[value]}
  num_length = string_arr.length - 1
  string_arr.each_with_index { |num, index| int += (num * 10 ** (num_length - index ))}
  int

end


def string_to_signed_integer(signed_string)
  sign = signed_string[0]
  if sign == '-'
    return string_to_integer(signed_string[1..-1]) * -1
  elsif sign == '+'
    return string_to_integer(signed_string[1..-1])
  else
    return string_to_integer(signed_string[0..-1])
  end
end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')

# Advanced portion

def string_to_signed_integer_launch(string)
  string[0] == '-' ? sign = -1 : sign = 1
  if (string[0] == '-') || (string[0] == '+')
    string.slice!(0)
  end
  string_to_integer(string) * sign
end

p string_to_signed_integer_launch('4321')
p string_to_signed_integer_launch('-570')
p string_to_signed_integer_launch('+100')