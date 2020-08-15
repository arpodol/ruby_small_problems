def show_multiplicative_average(int_array)
  product = int_array.inject(&:*)
  avg_str = '%.3f' % (product/int_array.length.to_f)
  p "The result is " + avg_str
end


show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

# If you remove the .to_f on the first line you end up with the average
# being computed as int, thus losing the decimal information.