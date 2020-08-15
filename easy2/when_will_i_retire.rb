Kernel.puts('What is your age?')
age = Kernel.gets().chomp().to_i()

Kernel.puts('At what age would you like to retire?')
retirement_age = Kernel.gets().chomp().to_i()
age_gap = retirement_age - age

current_year = Time.new().year()

Kernel.puts("It's #{current_year}. You will retire in #{current_year + age_gap}.")
Kernel.puts("You only have #{age_gap} years of work to go!")