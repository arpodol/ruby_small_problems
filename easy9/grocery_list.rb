=begin

~~Understanding the Problem~~#
Write a method that takes a grocery list of fruits with quantities and
converts it into an array of the correct number of each fruit.

~~Input~~#
- 1 array

~~Output~~#
- 1 array

~~Rules~~#
-

~~Example~~#
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

=end

def buy_fruit(grocery_list)
  fruit_array = []
  grocery_list.each do |item_array|
    item_array[1].times do
      fruit_array << item_array[0]
    end
  end
  fruit_array
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
      ["apples", "apples", "apples", "orange", "bananas","bananas"]

