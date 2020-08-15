def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

=begin
The reason the output is the same is that the
"if sunshine" checks for truthiness and both
elements in the sunshine array are strings, not
booleans.


=end