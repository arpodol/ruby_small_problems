=begin

# ~~Understanding the Problem~~#
Write a method that implements a miniture stack and register based programming language with
the following commands:
-n
- PUSH
- ADD
- SUB
- MULT
- DIV
- MOD
- POP
- PRINT


# ~~Input~~#
- A string containing commands.


# ~~Output~~#
- Nothing unless a print command is called.

# ~~Rules~~#
- Register initializes to 0
- All programs supplied are correct.

#~~Example~~#
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)


=end

def minilang(program)
  memory_hash = {:register => 0, :stack => []}
  command_array = program.split' '
  command_array.each do | command |
    case command
      when 'PUSH' then memory_hash[:stack].push(memory_hash[:register])
      when 'ADD'
        if memory_hash[:stack].any?
          memory_hash[:register] += memory_hash[:stack].pop
        else
          puts 'ERROR: The stack is empty!'
          break
        end
      when 'SUB'
        if memory_hash[:stack].any?
          memory_hash[:register] -= memory_hash[:stack].pop
        else
          puts 'ERROR: The stack is empty!'
          break
        end
      when 'MULT'
        if memory_hash[:stack].any?
          memory_hash[:register] *= memory_hash[:stack].pop
        else
          puts 'ERROR: The stack is empty!'
          break
        end
      when 'DIV'
        if memory_hash[:stack].any?
          memory_hash[:register] /= memory_hash[:stack].pop
        else
          puts 'ERROR: The stack is empty!'
          break
        end
      when 'MOD'
        if memory_hash[:stack].any?
          memory_hash[:register] %= memory_hash[:stack].pop
        else
          puts 'ERROR: The stack is empty!'
          break
        end
      when 'POP'
        if memory_hash[:stack].any?
          memory_hash[:register] = memory_hash[:stack].pop
        else
          puts 'ERROR: The stack is empty!'
          break
        end
      when 'PRINT' then puts memory_hash[:register]
      else
        if command.to_i.to_s == command
          memory_hash[:register] = command.to_i
        else
          puts 'ERROR: NOT A VALID COMMAND!'
          break
        end

    end
  end
end


minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Further Exploration
(3 + (4 * 5) - 7) / (5 % 3)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT ')

# Programs with errors
minilang('MULT 5 PUSH 3  PRINT')
minilang('MUL 5 PUSH 3  PRINT')
minilang('FIVE PUSH 3  PRINT')
minilang('ADD')
minilang('DIV')
minilang('POP')
minilang('MOD')


