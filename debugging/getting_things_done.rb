# BUG DESCRIPTION
# The program raises a SystemStackError when invoking move.



def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


# This error is happening because the move function is recursive without a way to escape the loop thus causing the stack
# to be filled too deep with no more calls able to be made.
# By adding a return, we can stop this infinite loop.

# Further exploration

todo_short = ['coffee with Tom']
done_long = ['apply sunscreen',  'go to the beach', 'study', 'walk the dog']
move(3, todo_short, done_long)
p todo_short
p done_long

# If the from_array is shorter than n, nil's are dropped into the to_array.