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


p string_to_integer('4321')
p string_to_integer('570')

def hexadecimal_to_integer(hex_string)
  int = 0
  hex_hash = { '0' => 0,
               '1' => 1,
               '2' => 2,
               '3' => 3,
               '4' => 4,
               '5' => 5,
               '6' => 6,
               '7' => 7,
               '8' => 8,
               '9' => 9,
               'A' => 10,
               'B' => 11,
               'C' => 12,
               'D' => 13,
               'E' => 14 ,
               'F' => 15}
  string_arr = hex_string.split('').map { |value| hex_hash[value.upcase]}
  num_length = string_arr.length - 1
  string_arr.each_with_index { |num, index| int += (num * 16 ** (num_length - index ))}
  int
end

p hexadecimal_to_integer('4D9f')