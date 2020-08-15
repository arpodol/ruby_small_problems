=begin

# ~~Understanding the Problem~~#
Write a method that takes a m X n matrix in array of arrays format and returns the transpose of the original
matrix.

# ~~Input~~#
- A m x n array of arrays matrix

# ~~Output~~#
- The n * n transpose of the original matrix

# ~~Rules~~#
- Cannot use built in matrix class or transpose method.
- Cannot modify original matrix.

#~~Example~~#

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]

=end

def transpose(matrix)
  transpose_matrix = Array.new(matrix[0].length){Array.new(matrix.length)}
  (0).upto(matrix[0].length-1) do |y|
    (0).upto(matrix.length-1) do |x|
      transpose_matrix[y][x] = matrix[x][y]
    end
  end
  transpose_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
    [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

=begin
# Further Exploration #
This assignment was a lot easier after solving a standardized 3x3 case. It was easier to figure out the logic
and then move to a more standardized case rather than having to deal with both iterating through
different lengthed arrays and figuring out what swaps with what.

=end


