
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


p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)



# Advanced portion
# Mutating string methods that do not end with a ! are:
# <<
# concat
# clear
# insert
# prepend
# replace

# Non mutating form with !:
# None found

# Array mutating methods not ending with !:
# <<
# [] =
# clear
# concat
# delete_if
# fill
# replace
# insert
# keep_if
# pop
# push
# replace
# shift
# unshift

# Non-mutating form with ! for array:
# none found

# Hash mutating methods not ending with !:
# [] =
# clear
# delete
# delete_if
# replace
# keep_if
# rehash

# Non mutating form with ! for hash
# none found