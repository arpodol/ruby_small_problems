=begin

# ~~Understanding the Problem~~#
Write a method that takes a 3 x 3 matrix in array of arrays format and returns the transpose of the original
matrix.

# ~~Input~~#
- A 3 x 3 array of arrays matrix

# ~~Output~~#
- The 3 x 3 transpose of the original matrix

# ~~Rules~~#
- Cannot use built in matrix class or transpose method.
- Cannot modify original matrix.

#~~Example~~#
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

=end

def transpose(matrix)
  transpose_matrix = Array.new(3){Array.new(3)}
  (0).upto(2) do |x|
    (0).upto(2) do |y|
      transpose_matrix[y][x] = matrix[x][y]
    end
  end
  transpose_matrix
end

def transpose!(matrix)
  (0).upto(2) do |y|
    (y).upto(2) do |x|
      matrix[x][y], matrix[y][x] =  matrix[y][x], matrix[x][y]
    end
  end
  matrix
end

matrix = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
]

new_matrix = transpose(matrix)
p new_matrix

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

new_matrix = transpose!(matrix)
p new_matrix
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

=begin
# Further Exploration #
=end


