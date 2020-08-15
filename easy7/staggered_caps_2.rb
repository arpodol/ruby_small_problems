def staggered_case2(string, ignore_non_alpha = false )
  char_bit = 0
  output_string =''
  string.length.times do |index|
    if string[index] =~ /[A-Z]/i or ignore_non_alpha
      char_bit += 1
    end
    char_bit.even? ? output_string += string[index].downcase : output_string += string[index].upcase
  end
  output_string
end


p staggered_case2('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case2('ALL CAPS') == 'AlL cApS'
p staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case2('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case2('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'