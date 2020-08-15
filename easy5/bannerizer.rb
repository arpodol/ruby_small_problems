def print_in_box(string)
  puts('+-' + '-' * string.length + '-+' )
  puts('| ' + ' '* string.length + ' |')
  puts('| ' + string + ' |')
  puts('| ' + ' '* string.length + ' |')
  puts('+-' + '-' * string.length + '-+' )
end

print_in_box('To boldly go where no one has gone before.')

def print_in_box_wrap(string)
  string_array = []
  max_number_of_lines = (string.length / 80.to_f).ceil - 1
  for line in 0..max_number_of_lines
    string_array.push(string[line*80,80])
  end
  puts('+-' + '-' * string_array[0].length + '-+' )
  puts('| ' + ' '* string_array[0].length + ' |')
  string_array.each do |string_chunk|
    puts('| ' + ' ' * (((string_array[0].length - string_chunk.length))/2) + string_chunk + ' ' * (((string_array[0].length - string_chunk.length))/2) + ' |')
  end
  puts('| ' + ' '* string_array[0].length + ' |')
  puts('+-' + '-' * string_array[0].length + '-+' )
end

print_in_box_wrap('To boldly go where no one has gone before. This is a very lo ng string that we are using to test this see how it handles having such a long string system. We cant always make it easy')