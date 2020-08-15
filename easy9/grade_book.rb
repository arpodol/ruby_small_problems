=begin

~~Understanding the Problem~~#
Write a method that determines the average of the three scores passed to it
and returns the letter value associated with that grade.

~~Input~~#
- 3 integers

~~Output~~#
- 1 string

~~Rules~~#
- Tested values are all between 0 and 100

~~Example~~#
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

=end

def get_grade(number1, number2, number3)
  mean = (number1 + number2 + number3)/3
  case mean
    when (90..Float::INFINITY)
      'A'
    when (80...90)
      'B'
    when (70...80)
      'C'
    when (60...70)
      'D'
    else
      'F'
  end
end


p get_grade(195, 190, 193) == "A"
p get_grade(50, 50, 95) == "D"

# FURTHER EXPLORATION
# One way to handle grades exceeding 100 points is to use infinity.

