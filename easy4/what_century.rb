def century(year)
  suffix_hash = {0 => 'th',
                 1 => 'st',
                 2 => 'nd',
                 3 => 'rd',
                 4 => 'th',
                 5 => 'th',
                 6 => 'th',
                 7 => 'th',
                 8 => 'th',
                 9 => 'th' }
  century_number = (year + 99) / 100
  century_ending = century_number % 100
  if century_ending == 11
    return "#{century_number}th"
  elsif century_ending == 12
    return "#{century_number}th"
  elsif century_ending == 13
    return "#{century_number}th"
  else
    return "#{century_number}#{suffix_hash[century_number%10]}"
  end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)