# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
    warrior: { strength:  20 },
    thief:   { dexterity: 20 },
    scout:   { stamina:   20 },
    mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player

=begin
The issue is that we are attempting to access the hash using a string rather than
a symbol. Thus we need to convert the input to a symbol. We also need to use merge!
instead of merge since merge doesn't mutate the caller and we want player to update.
=end