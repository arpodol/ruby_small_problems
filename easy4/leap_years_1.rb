def leap_year?(year)
  if (year % 4).zero? && (year % 100).zero?
    (year % 400).zero?
  else
    (year % 4).zero?
  end
end



# Further exploration:
# For year 2000, the given version will fail on the first test without
# checking if the year is also divisible by 400


def leap_year_order(year)
  if (year % 4).zero?
    if (year % 100).zero?
      if (year % 400).zero?
        return true
      else
        return false
      end
    else
      return true
    end
  else
    return false
  end
end

# This set order was a bit more of a hassle to write since it's
# alot more drawn out.

p leap_year_order(2016)
p leap_year_order(2015)
p leap_year_order(2100)
p leap_year_order(2400)
p leap_year_order(240000)
p leap_year_order(240001)
p leap_year_order(2000)
p leap_year_order(1900)
p leap_year_order(1752)
p leap_year_order(1700)
p leap_year_order(1)
p leap_year_order(100)
p leap_year_order(400)