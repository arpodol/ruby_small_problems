def word_cap(string)
  string_array = string.split(' ')
  string_array.map! {|word| word.capitalize}
  string_array.join(' ')


end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap_adv_one(string)
  string_array = string.split(' ')
  string_array.map! do | word |
    word.downcase!
    letters = word.split('')
    letters[0].upcase!
    letters.join('')
  end
  string_array.join(' ')
end

p word_cap_adv_one('the javaScript language') == 'The Javascript Language'
p word_cap_adv_one('four score and seven') == 'Four Score And Seven'



def word_cap_adv_two(string)
  string_array = string.split('')
  string_array.map.with_index do | letter, index |
    string_array[index-1] == ' ' || index == 0 ? letter.upcase! : letter.downcase!
  end
  string_array.join('')
end

p word_cap_adv_two('the javaScript language') == 'The Javascript Language'
p word_cap_adv_two('four score and seven') == 'Four Score And Seven'
