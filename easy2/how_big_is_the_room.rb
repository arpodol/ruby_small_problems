def size_of_room()
  sq_meter_to_sq_feet = 10.7639
  puts 'Enter the length of the room in meters:'
  length = gets.chomp().to_f
  puts 'Enter the width of the room in meters:'
  width = gets.chomp().to_f
  puts "The area of the room is #{length * width} square meters (#{length*width*sq_meter_to_sq_feet}) ft"

end

def size_of_room_modified()
  sq_meter_to_sq_feet = 10.7639
  sq_feet_to_sq_meter = 1/10.7639
  inches_in_feet = 12
  centimeters_in_meter = 100


  puts 'Enter the length of the room in feet:'
  length = gets.chomp().to_f
  puts 'Enter the width of the room in feet:'
  width = gets.chomp().to_f
  area_in_feet = (length*width).round(2)
  area_in_inches = (area_in_feet * (inches_in_feet**2)).round(2)
  area_in_cm = (area_in_feet*sq_feet_to_sq_meter*(centimeters_in_meter**2)).round(2)
  puts "The area of the room is #{area_in_feet} square feet, #{area_in_inches} square inches, and #{area_in_cm} square centimeters"

end



size_of_room_modified