def multisum(integer)
  sum = 0
  index = 0
  while index <= integer
    if (index % 3).zero? || (index % 5).zero?
      sum += index
    end
    index += 1
  end
  sum
end

def multsum_inject(integer)
  num_array = [*0..integer]
  num_array.inject { |sum, n| ((n % 3).zero? || (n % 5).zero?) ? sum += n : sum}
end


p multsum_inject(3)
p multsum_inject(5)
p multsum_inject(10)
p multsum_inject(1000)

# The version using inject is much more concise yet much harder to read

