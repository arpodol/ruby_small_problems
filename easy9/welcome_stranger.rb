# ~~Understanding the Problem~~#
# Write a method that takes a non-empty string and returns the middle character

# ~~Input~~#
# - 1 name array with 2 or more entries
# - 1 hash with 2 keys

# ~~Output~~#
# - 1 string

# ~~Rules~~#
# - Name is split across the array
# - Hash will contain two keys :title and :occupation

# ~~Example~~#
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

def greetings(name_array, job_hash)
  name = name_array.join(' ')
  title = job_hash[:title]
  occupation = job_hash[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], title: 'Master', occupation: 'Plumber')
