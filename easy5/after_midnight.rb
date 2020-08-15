
def time_of_day(minutes_offset_midnight)
  hour_portion = (minutes_offset_midnight.abs / 60) % 24
  minute_portion = minutes_offset_midnight.abs % 60
  if minutes_offset_midnight >=0
    puts "#{"%02d" % hour_portion}:#{"%02d" % minute_portion}"
  elsif minute_portion == 0
    puts "#{"%02d" % (24 - hour_portion)}:#{"%02d" % (60 - minute_portion)}"
  else
    puts "#{"%02d" % (23 - hour_portion)}:#{"%02d" % (60 - minute_portion)}"
  end
end

# time_of_day(0)
# time_of_day(-3)
# time_of_day(35)
# time_of_day(-1437)
# time_of_day(3000)
# time_of_day(800)
# time_of_day(-4231)





def time_of_day_advanced(minutes_offset_midnight)
  days_of_week = {0 => "Sunday",
                  1 => "Monday",
                  2 => "Tuesday",
                  3 => "Wednesday",
                  4 => "Thursday",
                  5 => "Friday",
                  6 => "Saturday"}
  hour, minute = minutes_offset_midnight.divmod(60)
  starting_date = Time.new(2017, 11, 12)
  date_new = starting_date + (minutes_offset_midnight * 60)
  p "#{days_of_week[date_new.wday]} #{"%02d" % (date_new.hour)}:#{"%02d" % (date_new.min)}"
end

time_of_day_advanced(0)
time_of_day_advanced(-3)
time_of_day_advanced(35)
time_of_day_advanced(-1437)
time_of_day_advanced(3000)
time_of_day_advanced(800)
time_of_day_advanced(-4231)