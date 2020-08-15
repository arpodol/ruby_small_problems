=begin

# ~~Understanding the Problem~~#
Write a method that takes an integer n and prints a 4 pointed diamond
in an n*n grid.

# ~~Input~~#
- An integer


# ~~Output~~#
- A 4 pointed diamond in an n x n grid.

# ~~Rules~~#
- The integer is odd.

#~~Example~~#
diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

=end

def diamond(integer)
  (1..integer).each do | int |
    if int <= ((integer/2) + 1)
      puts ' ' * ((integer - (int * 2-1))/2) + '*' * (int * 2-1)
    else
      puts ' ' * ((integer - (((integer+1-int)*2-1)))/2) + '*' * (((integer+1-int)*2-1))
    end
  end
end

diamond(1)

diamond(3)

diamond(9)

# Further Exploration

def print_row(grid_size, distance_from_center)
  line_length = grid_size - 2 * distance_from_center
  if line_length == 1
    stars = '*'
  else
    stars = ' ' * ((grid_size-line_length)/2) + '*' + ' ' * (line_length-2) + '*' + ' ' * ( grid_size-line_length)
  end
  puts stars.center(grid_size)
end

def diamond_outline(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end




diamond_outline(5)
diamond_outline(7)