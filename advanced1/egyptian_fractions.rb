=begin

# ~~Understanding the Problem~~#
Write two methods: One that takes a rational number as an argument and returns an array o the denominators that are
part of an Egyptian Fraction representation of the number and another that takes an array of numbers in the same
format and calculates the resulting rational number.

# ~~Input~~#
1. A rational number
2. An array of numbers in Egyptian Fraction format.

# ~~Output~~#
1. An array of numbers in Egyptian Fraction format.
2. A rational number.

# ~~Rules~~#
- You will need to use the rational number class provided by ruby.

#~~Example~~#
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

=end

def egyptian(rational_number)
  numerator_array = []
  numerator = rational_number.rationalize.numerator
  denominator = rational_number.rationalize.denominator

  # For numbers greater than 1, use harmonic series
  if numerator.to_f/denominator >= 1
    int = 1
    loop do
      next_unit_fraction = Rational(1,int)
      next_rational = Rational(numerator, denominator).rationalize - next_unit_fraction
      break if next_rational < 0
      numerator_array.push(int)
      numerator, denominator = next_rational.numerator, next_rational.denominator
      int +=1
    end
  end

  # Once harmonic series becomes too big, switch to greedy method for calculating egyptian fractions.
  if numerator != 0
    loop do
      if numerator != 1
        first_term_denominator = (denominator.to_f/numerator).ceil
        numerator_array.push(first_term_denominator)
        next_term_numerator = -denominator % numerator
        next_term_denominator = first_term_denominator * denominator
        next_rational = Rational(next_term_numerator, next_term_denominator).rationalize
        numerator = next_rational.numerator
        denominator = next_rational.denominator
      end
      break if numerator == 1
    end
    numerator_array.push(denominator)
  end
  numerator_array
end


def unegyptian(array)
  array.inject(Rational(1,1)){|sum, num| sum + Rational(1,num)} - 1
end


p egyptian(Rational(2, 1)) == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)


=begin
# Further Exploration



=end

