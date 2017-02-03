# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

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

whiz_bang_calculator = WhizBangCalculator.new

puts "TESTING WhizBangCalculator add..."
puts

result = whiz_bang_calculator.add(10, 5)

puts "Your method returned:"
puts result
puts

if result == 15
  puts "PASS!"
else
  puts "F"
end

puts "TESTING WhizBangCalculator subtract..."
puts

result = whiz_bang_calculator.subtract(10, 5)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

puts "TESTING WhizBangCalculator multiply..."
puts

result = whiz_bang_calculator.multiply(10, 5)

puts "Your method returned:"
puts result
puts

if result == 50
  puts "PASS!"
else
  puts "F"
end

puts "TESTING WhizBangCalculator divide..."
puts

result = whiz_bang_calculator.divide(10, 5)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

puts "TESTING WhizBangCalculator square root..."
puts

result = whiz_bang_calculator.square_root(9)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

puts "TESTING WhizBangCalculator hypotenuse..."
puts

result = whiz_bang_calculator.hypotenuse(9, 12)

puts "Your method returned:"
puts result
puts

if result == 15
  puts "PASS!"
else
  puts "F"
end

puts "TESTING WhizBangCalculator exponent..."
puts

result = whiz_bang_calculator.exponent(2, 3)

puts "Your method returned:"
puts result
puts

if result == 8
  puts "PASS!"
else
  puts "F"
end