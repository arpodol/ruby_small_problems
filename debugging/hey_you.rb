# BUG DESCRIPTION
# The code prints HEY you instead of HEY YOU. Fix it.

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join('')

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'