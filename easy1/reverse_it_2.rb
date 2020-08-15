def reverse_words(string)
  string_array = string.split(' ').each do |x|
    if x.length > 4
      x.reverse!
    end
  end
  string_array.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')