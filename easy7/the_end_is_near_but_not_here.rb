def penultimate(string)
  string.split(' ')[-2]
end


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# If one wants the middle word of a phrase or sentence, you would need to handle situations where there the middle
# of the sentence is technically between two words. Also cases with one or no words need to be handled.

def middle(string)
  string_array = string.split(' ')
  if string_array.length == 0
    nil
  elsif string_array.length == 1
    string_array[0]
  elsif string_array.length.even? == true
    "No middle word"
  else
    string_array[string_array.length/2]
  end
end

p middle('')
p middle('Test')
p middle('last word')
p middle('Launch School is great!')
p middle('Launch School is super great!')