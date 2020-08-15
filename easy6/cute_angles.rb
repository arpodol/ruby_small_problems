DEGREE = "\xC2\xB0"

def dms(degrees)
  degree_portion = degrees.to_i
  minutes = (degrees - degree_portion) * 60
  minutes_portion = minutes.to_i
  seconds = (minutes - minutes_portion) * 60
  seconds_portion = seconds.to_i
  %(#{degree_portion}#{DEGREE}#{"%.2d" % minutes_portion}'#{"%.2d" % seconds_portion}\")
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(361)

# Advanced portion of cute angles
# My version does not work with any range of positive degrees. One could strip off any extra circles(360)
# and work with the remainder at the very beginning of the method.


MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms_inclusive(degrees_float)
  degrees_float < 0 ? converted_degrees_float = degrees_float.abs : converted_degrees_float - degrees_float

  total_seconds = (converted_degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  degrees *= -1 if degrees_float < 0
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms_inclusive(-76.73)
