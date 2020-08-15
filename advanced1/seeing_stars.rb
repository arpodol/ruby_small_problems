=begin

# ~~Understanding the Problem~~#
Write a method that displays an 8-pointed star in a n x n grid where n is an odd integer.

# ~~Input~~#
- An integer

# ~~Output~~#
- An 8 pointed star in an n x n grid.

# ~~Rules~~#
Smallest star needed to handle is a 7x7 grid.

#~~Example~~#
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

=end

def print_row(row, size)
  puts (' ' * (row-1) + '*' + ' ' * ((size/2)-row) + '*' + ' ' * ((size/2)-row) + '*')
end


def star(size)
  1.upto(size/2) {|row| print_row(row, size)}
  puts ("*" * size)
  (size/2).downto(1) {|row| print_row(row, size)}
end

star(7)
puts ''
star(9)
puts ''
puts ''

=begin
# Further Exploration #

=end


def circle(radius)
  graph_matrix = Array.new(2 * radius + radius / 2){Array.new(2 * radius + radius / 2)}
  center_point = radius+radius/4
  (0..(radius * 2 + radius/2 - 1)).each do |x|
    (0..(radius * 2 + radius/2 - 1)).each do |y|
      if ((x - center_point) ** 2 + (y - center_point) ** 2) <= radius ** 2
        graph_matrix[y][x] = '*'
      else
        graph_matrix[y][x] = ' '
      end
    end
  end
  print_matrix(graph_matrix)
end

def print_matrix(matrix)
  matrix.each do | row|
    p row.inject(:+)
  end
end

circle(51)
circle(25)

def sine(amplitude, scale_factor = 10)
  graph_matrix = Array.new(2+amplitude*scale_factor*2){Array.new(14*scale_factor)}
  x_center_point =7*scale_factor/2
  y_center_point = amplitude*scale_factor
  (0..(amplitude*scale_factor*2+1)).each do |y|
    (0..((14*scale_factor)-1)).each do |x|
      if ( scale_factor * amplitude * Math.sin(((x - x_center_point)/scale_factor.to_f))).round()  == ((y-y_center_point))
        graph_matrix[y][x] = '*'
      else
        graph_matrix[y][x] = ' '
      end
    end
  end
  print_matrix(graph_matrix)
end

sine(1)
sine(3)


