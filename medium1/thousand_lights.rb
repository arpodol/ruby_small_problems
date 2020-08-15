=begin

# ~~Understanding the Problem~~#
Write a method that takes the total number of switches(n) and returns an array
that identifies which lights are on after n repetitions.

# ~~Input~~#
- 1 integer identifying how many lights there are.


# ~~Output~~#
- 1 array identifying which lights are on.

# ~~Rules~~#
- Toggling lights is dependent on which iteration you are on. The first iteration
you turn them all on, 2nd iteration you toggle switches 2, 4, 6 etc. The 2nd iteration you
flip 3, 6, 9 etc. and so on. This is done n times.

#~~Example~~#
light_bank(5) == [1, 4]
light_bank(10) == [1, 4, 9]

=end
def flip_light(light_status)
  !light_status
end

def light_bank(number_of_lights)
  light_array = []
  number_of_lights.times {|_| light_array.push(false)}
  (1..number_of_lights).each do |factor|
    (1..number_of_lights).each do |light_bulb_number|
      if light_bulb_number % factor == 0
        light_array[light_bulb_number - 1] = flip_light(light_array[light_bulb_number - 1])
      end
    end
  end
  light_on_array = []
  light_array.each_with_index do |light_bulb_status, position|
    light_on_array << (position + 1) if light_bulb_status
  end
  light_on_array
end


p light_bank(5) == [1, 4]
p light_bank(10) == [1, 4, 9]

=begin
1. Every light on is a perfect square because all those numbers have an odd
number of factors, i.e. 9 has 1, 3, and 9 as factors. All other numbers have
an even number of factors. Each factor represents a time a light is switched
and flipping it an odd number of times leaves a light on.
2. If an array was used to represent the 1000, some changes would be that
we would have to account for the fact that arrays start indexing at 0, we would
have to iterate through each to check for the light's status rather than pulling
all keys that have a corresponding value.
3. To go about writing that code, we could either generate two arrays of the lights
that are on and off and print out the values accordingly or using the total number
of lights and the array we print out the on lights and the off lights knowing which
aren't in the on array.
=end
