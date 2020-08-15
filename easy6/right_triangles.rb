def triangle (number_of_rows)
  0.upto(number_of_rows) do |row|
    puts ' ' * (number_of_rows - row)  +  '*' * row
  end
end

triangle(5)
triangle(9)

def triangle_upside_down (number_of_rows)
  0.upto(number_of_rows) do |row|
    puts ' ' * row  +  '*' * (number_of_rows - row)
  end
end

triangle_upside_down(5)
triangle_upside_down(9)

def triangle_any_corner (number_of_rows,corner)
  # Corner values start from 1 which is a right corner projecting into the +X and +Y axis
  # 2 would be a right angle projecting into the -X and +Y axis
  # 3 would be a right angle projecting into the -X and -Y axis
  # 4 would be a right angle projecting into the +X and -Y axis

  format_hash ={1 => ['*',' '], 2 => [' ','*'], 3 => [' ','*'], 4 => ['*',' '] }
  if corner == 1 || corner == 3
    0.upto(number_of_rows) do |row|
      puts format_hash[corner][0] * row  +  format_hash[corner][1] * (number_of_rows - row)
    end
  elsif corner == 2 || corner == 4
    0.upto(number_of_rows) do |row|
      puts format_hash[corner][0] * (number_of_rows - row)  +  format_hash[corner][1] * row
    end
  end
end

triangle_any_corner(5, 1)
triangle_any_corner(5, 2)
triangle_any_corner(5, 3)
triangle_any_corner(5, 4)