colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length
  break unless things[i] && colors[i]
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

=begin
What is wrong is that the colors array contains 8 elements and the things array
contains 7 elements. Thus, by using colors.length as the conditional, the loop tries
to access an element out of the range of the things array. Also, the conditional breaks on
when i is greater than the length of the array but since array indexing starts at 0, this
will also attempt to access an element out of range.

To fix all this, we can either add another element to the things array or use things.length
since that is the shorter of the two arrays. We also need to change the conditional to break
prior to iterating on index numbers out of range of both arrays.


####FURTHER EXPLORATION####
If we are worried about the arrays changing size in the future, we could add a line such as
break unless things[i] && colors[i] at the beginning of the loop since those will return nil
if there is no element.
=end
