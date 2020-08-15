def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

#find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

=begin
The error message raised for the first example is that
the wrong number of arguments are passed in. The method
find_first_nonzero_among is expecting only one argument,
not 6.

The error message raised for the second example is that
each is not defined for the argument passed in. Each is
defined for an enumerable but a single number was passed
in as opposed to an array.
=end