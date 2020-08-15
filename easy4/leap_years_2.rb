def leap_year?(year)
  if year < 1752 && (year % 4).zero?
    true
  else
    if (year % 4).zero? && (year % 100).zero?
      (year % 400).zero?
    else
      (year % 4).zero?
    end
  end
end



# Further exploration:
# I didn't realize that the leap year formula had to be changed


p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(240000)
p leap_year?(240001)
p leap_year?(2000)
p leap_year?(1900)
p leap_year?(1752)
p leap_year?(1700)
p leap_year?(1)
p leap_year?(100)
p leap_year?(400)