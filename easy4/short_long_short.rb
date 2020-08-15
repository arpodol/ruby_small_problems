def short_long_short(string_1,string_2)
  string_1.length < string_2.length ? string_1 + string_2 + string_1 : string_2 + string_1 + string_2
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')