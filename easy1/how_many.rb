def count_occurrences(string_array)
  count_hash = {}
  string_array.each do |string|
    if count_hash.has_key?(string)
      count_hash[string] += 1
    else
      count_hash[string] = 1
    end
  end
  puts count_hash
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)