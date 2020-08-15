pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

# This works because pets[:dog] in the original hash
# is ['sparky', 'fido'] and by assigning it to 'bowser'
# the original value for the key is overwritten.