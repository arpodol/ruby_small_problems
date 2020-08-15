Kernel.puts('What is your name?')
name = Kernel.gets().chomp!()

if name[-1] == '!'
  Kernel.puts("HELLO #{name.upcase().chop!()}. WHY ARE WE SCREAMING?")
else
  Kernel.puts("Hello #{name}.")
end