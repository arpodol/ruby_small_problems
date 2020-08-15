def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num,power)
  iteration = 0
  sum = 1
  while iteration < power
    sum = multiply(sum,num)
    iteration += 1
  end
  sum
end

p power(5,3)
