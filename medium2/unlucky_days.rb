=begin

# ~~Understanding the Problem~~#
Write a method that returns the number of Friday the 13ths in a given year.

# ~~Input~~#
- The year as an integer

# ~~Output~~#
- An integer counting the number of Friday the 13ths in the given year.

# ~~Rules~~#
- Assume the year is greater than 1752 and the Gregorian Calender will be used in the foreseeable future.

#~~Example~~#
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
=end
require 'date'

def friday_13th(year)
  (1..12).count {|month| Date.new(year, month, 13).cwday == 5}
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


=begin
# Further Exploration #

=end

def five_friday_months(year)
  friday_array = []
  (1..12).count do |month|
    friday_count = 0
    (1..31).count do |day|
      if Date.valid_date?(year,month,day)
        if Date.new(year, month, day).cwday == 5
          friday_count += 1
          friday_array.push(month) if friday_count == 5
        end
      end
    end
  end
  friday_array
end

p five_friday_months(2015) == [1, 5, 7, 10]
p five_friday_months(2016) == [1, 4, 7, 9, 12]
p five_friday_months(2017) == [3, 6, 9, 12]

