# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

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

# Write your own driver code below:

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