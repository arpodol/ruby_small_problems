=begin

# ~~Understanding the Problem~~#
Write a method that takes a string and returns true if all parentheses in the string are properly balanced,
false eitherwise.

# ~~Input~~#
- A string

# ~~Output~~#
- A boolean dictating if all parentheses are properly balanced.

# ~~Rules~~#
- The same number of parentheses and all balanced pairs must start with an '(' not an ')'

#~~Example~~#
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
=end

def balanced?(string)
  string_array = string.split('')
  parentheses_pair = 0
  bracket_pair = 0
  curly_pair = 0
  quote_pair = 0
  double_quote_pair = 0
  string_array.each do |char|
    parentheses_pair += 1 if char == '('
    parentheses_pair -= 1 if char == ')'
    bracket_pair += 1 if char == '['
    bracket_pair -= 1 if char == ']'
    curly_pair += 1 if char == '{'
    curly_pair -= 1 if char == '}'
    quote_pair += 1 if char == "'"
    double_quote_pair += 1 if char == "\""
    break if parentheses_pair < 0 || bracket_pair < 0 || curly_pair < 0
  end
  parentheses_pair.zero? && bracket_pair.zero? && curly_pair.zero? && quote_pair % 2 == 0 && double_quote_pair % 2 == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('Hey!}') == false
p balanced?('Hey!}') == false
p balanced?('{Hey!}') == true
p balanced?('[({Hey!})]') == true
p balanced?("H'ey!") == false
p balanced?("H'e'y!") == true
p balanced?("H'e\"y!") == false
p balanced?("H'\"e'\"y!") == true


=begin
# Further Exploration #
Added checks for other paired symbols. This still allows where the symbols could be mixed in the order of closure,
i.e. ([{]}) which isn't valid syntax. One way to check for this would be that everytime a left side symbol is
present, have a variable such as last_enclosure be set to that type of enclosure. Then, when a left side symbol is called,
if it isn't of the same enclosure type as last_enclosure, then the program konks out. Actually, I was tempted enough to
give it a try and the following is that attempt. By utilizing a stack, I can keep track of the progression of enclosure
types use and pop and push as needed.
=end


def balanced_order?(string)
  string_array = string.split('')
  parentheses_pair = 0
  bracket_pair = 0
  curly_pair = 0
  quote_pair = 0
  double_quote_pair = 0
  mismatched_order = false
  last_symbol_array = []
  string_array.each do |char|
    if char == '('
      parentheses_pair += 1
      last_symbol_array.push('parentheses')
    end

    if char == ')'
      parentheses_pair -= 1
      if last_symbol_array.last == 'parentheses'
        last_symbol_array.pop
      else
        mismatched_order = true
        break
      end
    end

    if char == '['
      bracket_pair += 1
      last_symbol_array.push('bracket')
    end

    if char == ']'
      bracket_pair -= 1
      if last_symbol_array.last == 'bracket'
        last_symbol_array.pop
      else
        mismatched_order = true
        break
      end
    end

    if char == '{'
      curly_pair += 1
      last_symbol_array.push('curly')
    end

    if char == '}'
      curly_pair -= 1
      if last_symbol_array.last == 'curly'
        last_symbol_array.pop
      else
        mismatched_order = true
        break
      end
    end

    if char == "'"
      quote_pair += 1
      if quote_pair % 2 == 1
        last_symbol_array.push('single_quote')
      else
        if last_symbol_array.last == 'single_quote'
          last_symbol_array.pop
        else
          mismatched_order = true
          break
        end
      end
    end

    if char == "\""
      double_quote_pair += 1
      if double_quote_pair % 2 == 1
        last_symbol_array.push('double_quote')
      else
        if last_symbol_array.last == 'double_quote'
          last_symbol_array.pop
        else
          mismatched_order = true
          break
        end
      end
    end
    break if parentheses_pair < 0 || bracket_pair < 0 || curly_pair < 0
  end
  parentheses_pair.zero? && bracket_pair.zero? && curly_pair.zero? && quote_pair % 2 == 0 &&
      double_quote_pair % 2 == 0 && mismatched_order == false
end

p '~~~~~Further exploration~~~~'
p balanced_order?('What (is) this?') == true
p balanced_order?('What is) this?') == false
p balanced_order?('What (is this?') == false
p balanced_order?('((What) (is this))?') == true
p balanced_order?('((What)) (is this))?') == false
p balanced_order?('Hey!') == true
p balanced_order?(')Hey!(') == false
p balanced_order?('What ((is))) up(') == false
p balanced_order?('Hey!}') == false
p balanced_order?('Hey!}') == false
p balanced_order?('{Hey!}') == true
p balanced_order?('[({Hey!})]') == true
p balanced_order?("H'ey!") == false
p balanced_order?("H'e'y!") == true
p balanced_order?("H'e\"y!") == false
p balanced_order?("H'\"e'\"y!") == false

p balanced_order?('[{(Hey!})]') == false
p balanced_order?('({{{Hey!}})}') == false


