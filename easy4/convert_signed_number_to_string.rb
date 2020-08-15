def integer_to_string(integer)
  int_to_string_hash = { 0 => '0',
                         1 => '1',
                         2 => '2',
                         3 => '3',
                         4 => '4',
                         5 => '5',
                         6 => '6',
                         7 => '7',
                         8 => '8',
                         9 => '9' }
  units = 1
  int_string = ''
  remainder = nil
  until remainder == 0
    remainder = integer / (units * 10)
    int_string = int_to_string_hash[integer / units % 10] + int_string
    units *= 10
  end
  int_string
end

def signed_integer_to_string(int)
  if int < 0
    '-' + integer_to_string(int*-1)
  elsif int > 0
    '+' + integer_to_string(int)
  else
    '0'
  end
end

def signed_integer_to_string_launch(number)
  int_string = integer_to_string(number.abs)
  case number <=> 0
    when -1 then "-" + int_string
    when +1 then "+" + int_string
    else         0
  end
end


p signed_integer_to_string_launch(4321)
p signed_integer_to_string_launch(-123)
p signed_integer_to_string_launch(0)