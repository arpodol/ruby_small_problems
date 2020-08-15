=begin

# ~~Understanding the Problem~~#
Write a method that takes the lengths of the 3 sides of a triangle and returns the type of triangle it is
if valid or if it is invalid

# ~~Input~~#
- 3 integers

# ~~Output~~#
- A symbol dictating the type of triangle if valid otherwise :invalid

# ~~Rules~~#
- Equilateral triangles has all three sides of equal length.
- Isosceles have 2 sides of equal lenght and one side different.
- Scalene triangles have all three sides of different length.
- The sum of the lengths of the two shortest sides must be greater than the length of the longest side in a valid
triangle and all lengths must be greater than 0. Otherwise, it is an invalid triangle.


#~~Example~~#
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
=end

def triangle(num1, num2, num3)
  side_array = [num1, num2, num3]
  side_array.sort!
  if (side_array[0] + side_array[1]) < side_array[2] || side_array[0] == 0
    :invalid
  elsif num1 == num2 && num2 == num3
    :equilateral
  elsif num1 == num2
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid


=begin
# Further Exploration #

=end


