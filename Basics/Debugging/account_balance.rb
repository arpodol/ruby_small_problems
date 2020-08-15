# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
    income: [ 1200, 75 ],
    expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
    income: [ 1200 ],
    expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
    income: [ 1200, 10, 75 ],
    expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].inject(:+)
  minus = month[:expenses].inject(:+)

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

# What we did wrong is that by using each, balance is defined
# by the last iteration of the each block. Hence, calculate_balance(march)
# To fix it, we can put a += instead of = in the block to keep summing
# up the balances of each month.