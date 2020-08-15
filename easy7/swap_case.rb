def swapcase(string)
  string_array = string.split('')
  string_array.each do |character|
    if /[a-z]/ =~ character || /[A-Z]/ =~ character
      if character.downcase == character
        character.upcase!
      elsif character.upcase == character
        character.downcase!
      else
        character
      end
    end
  end
  string_array.join('')
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'