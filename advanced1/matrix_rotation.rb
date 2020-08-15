=begin

# ~~Understanding the Problem~~#
Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise.

# ~~Input~~#
- An arbitrary matrix.

# ~~Output~~#
- The matrix rotated 90 degrees.

# ~~Rules~~#

#~~Example~~#

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

=end

def rotate90(matrix)
  rotation_matrix = Array.new(matrix[0].length){Array.new(matrix.length)}
  (0).upto(matrix.length - 1) do |x|
    (0).upto(matrix[0].length - 1) do |y|
      rotation_matrix[y][x] = matrix[matrix.length - x - 1][y]
    end
  end
  rotation_matrix
end

matrix1 = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
]

matrix2 = [
    [3, 7, 4, 2],
    [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2


=begin
# Further Exploration #
Using our prewritten 90 degree rotation, it is quite easy to handle multiples.
=end

def rotate(matrix, degrees)
  case degrees
    when 90
      rotate90(matrix)
    when 180
      rotate90(rotate90(matrix))
    when 270
      rotate90(rotate90(rotate90(matrix)))
    when 360
      rotate90(rotate90(rotate90(rotate90(matrix))))
    else
      p "You passed #{degrees}, I can only handle 90, 180, 270 and 360"
  end
end

p rotate(matrix1, 90) == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p rotate(matrix1, 180) == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p rotate(matrix1, 270) == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]
p rotate(matrix1, 360) == matrix1
