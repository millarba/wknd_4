# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Maths
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end


class SimpleCalculator
  include Maths

end

class FancyCalculator
  include Maths

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

simple_calculator = SimpleCalculator.new

puts "TESTING SimpleCalculator add..."
puts

result = simple_calculator.add(10, 5)

puts "Your method returned:"
puts result
puts

if result == 15
  puts "PASS!"
else
  puts "F"
end

puts "TESTING SimpleCalculator subtract..."
puts

result = simple_calculator.subtract(10, 5)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

puts "TESTING SimpleCalculator multiply..."
puts

result = simple_calculator.multiply(10, 5)

puts "Your method returned:"
puts result
puts

if result == 50
  puts "PASS!"
else
  puts "F"
end

puts "TESTING SimpleCalculator divide..."
puts

result = simple_calculator.divide(10, 5)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

fancy_calculator = FancyCalculator.new

puts "TESTING FancyCalculator add..."
puts

result = fancy_calculator.add(10, 5)

puts "Your method returned:"
puts result
puts

if result == 15
  puts "PASS!"
else
  puts "F"
end

puts "TESTING FancyCalculator subtract..."
puts

result = fancy_calculator.subtract(10, 5)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

puts "TESTING FancyCalculator multiply..."
puts

result = fancy_calculator.multiply(10, 5)

puts "Your method returned:"
puts result
puts

if result == 50
  puts "PASS!"
else
  puts "F"
end

puts "TESTING FancyCalculator divide..."
puts

result = fancy_calculator.divide(10, 5)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

puts "TESTING FancyCalculator square root..."
puts

result = fancy_calculator.square_root(9)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end