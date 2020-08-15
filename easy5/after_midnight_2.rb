MINUTES_IN_DAY = 24 * 60


def after_midnight(time)
  time_array = time.split(':')
  hours = time_array[0].to_i
  minutes = time_array[1].to_i
  total_minutes = (hours * 60 + minutes) % MINUTES_IN_DAY
end

def before_midnight(time)
  time_array = time.split(':')
  hours = time_array[0].to_i
  minutes = time_array[1].to_i
  return 0 unless time != '00:00'
  total_minutes = MINUTES_IN_DAY % (hours * 60 + minutes)
end


def after_midnight_date(time)
  midnight_time = Time.new(2017, 11, 17, 0, 0)
  time_array = time.split(':')
  hours = time_array[0].to_i
  minutes = time_array[1].to_i
  new_time = Time.new(2017, 11, 17, hours, minutes)
  (new_time.hour - midnight_time.hour) * 60 + (new_time.min - midnight_time.min)
end

def before_midnight_date(time)
  midnight_time = Time.new(2017, 11, 17, 0, 0)
  time_array = time.split(':')
  hours = time_array[0].to_i
  minutes = time_array[1].to_i
  new_time = Time.new(2017, 11, 17, hours, minutes)
  ((midnight_time.hour - new_time.hour) * 60 - (midnight_time.min - new_time.min)).abs

end

p after_midnight_date('00:00')
p before_midnight_date('00:00')
p after_midnight_date('12:34')
p before_midnight_date('12:34')
p after_midnight_date('24:00')
p before_midnight_date('24:00')

