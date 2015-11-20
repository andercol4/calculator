# def menu
#   puts "Enter First Value"
#   int1 = gets.to_i
#   puts "Enter the operator i.e. +, -, *, /"
#   operator = gets.strip
#   puts "Enter Second Value"
#   int2 = gets.to_i
#   case operator
#   when "+"
#     addition(int1, int2)
#   when "-"
#     subtract(int1, int2)
#   when "*"
#     multiply(int1, int2)
#   when "/"
#     division(int1, int2)
#   else
#     puts "Sorry invalid operation"
#     menu
#   end
# end
#
 @history = {}
def menu
  puts "Please use +, -, *, or / for operations"
  puts "for example 3 * 5"
  puts "type 'quit' to quit"
  puts "type 'history' for history"
  puts "Enter Equation"
  equation = gets.downcase.strip
  if equation == "quit"
    exit 0
  elsif equation == "history"
  @history.each {|key, value| puts "#{key} = #{value}"}
  menu
  else
    equat_arr = equation.split(" ")
    int1 = equat_arr[0].to_i
    operator = equat_arr[1]
    int2 = equat_arr[2].to_i
    operate(int1, int2, operator)
  end
end


def addition(num1, num2)
  puts "#{num1} + #{num2} = #{num1 + num2}"
  solution = num1 + num2
  problem = "#{num1} + #{num2}"
  return solution, problem
end

def subtract(num1, num2)
  puts "#{num1} - #{num2} = #{num1 - num2}"
  solution = num1 - num2
  problem = "#{num1} - #{num2}"
  return solution, problem
end

def division(num1, num2)
  solution = num1 / num2
  if num2 == 0
    puts "Sorry can't divide by 0"
  else
    puts "#{num1} / #{num2} = #{num1 / num2}"
  end
  problem = "#{num1} / #{num2}"
  return solution, problem
end

def multiply(num1, num2)
  puts "#{num1} * #{num2} = #{num1 * num2}"
  problem = "#{num1} * #{num2}"
  solution = num1 * num2
  return solution, problem
end

def exit_choice
  puts "type 'quit' to quit, type 'history' to see history, or hit enter to continue"
  exit_inp = gets.downcase.strip
  if exit_inp == 'quit'
    exit 0
  elsif exit_inp == 'history'
    @history.each {|key, value| puts "#{key} = #{value}"}
    menu
  else
    menu
  end
end

def operate(int1, int2, operator)
  case operator
  when "+"
   history(addition(int1, int2))
  when "-"
    history(subtract(int1, int2))
  when "*"
    history(multiply(int1, int2))
  when "/"
    history(division(int1, int2))
  else
    puts "Sorry invalid operation"
  end
  exit_choice
end

def history(problem)
  problem
@history[problem[1]] = problem[0]
end


menu
