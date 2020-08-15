def staggered_case(string)
  string.length.times do |index|
    string[index] = index.even? ? string[index].upcase : string[index].downcase
  end
  string
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case_advanced(string,first_letter_upcase)
  first_letter_upcase == true ? modulus_number = 0 : modulus_number = 1
  string.length.times do |index|
    string[index] = index % 2 == modulus_number ? string[index].upcase : string[index].downcase
  end
  string
end

p staggered_case_advanced('I Love Launch School!', true)
p staggered_case_advanced('ALL_CAPS', false)
p staggered_case_advanced('ignore 77 the 444 numbers', true)