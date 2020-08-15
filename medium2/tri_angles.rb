=begin

# ~~Understanding the Problem~~#
Write a method that takes the 3 angles of a triangle and returns the type of triangle it is
if valid or if it is invalid

# ~~Input~~#
- 3 integers representing the angles

# ~~Output~~#
- A symbol dictating the type of triangle if valid otherwise :invalid

# ~~Rules~~#
- Right triangles have one angle that is 90 degrees.
- Acute triangles have all three angles less than 90 degrees.
- Obtuse have one angle greater than 90 degrees.
- The sum of the three angles must be exactly 180 degrees and all angles must be greater than 0 degrees.


#~~Example~~#
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
=end

def triangle(angle1, angle2, angle3)
  side_array = [angle1, angle2, angle3]
  if side_array.inject(:+) != 180 || side_array.include?(0)
    :invalid
  elsif side_array.include?(90)
    :right
  elsif side_array.any?{|angle| angle > 90}
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid


=begin
# Further Exploration #

=end


