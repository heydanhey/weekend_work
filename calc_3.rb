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
ti85 = WhizBangCalculator.new

puts "Testing WhizBangCalculator..."
puts "...inheritaning methods from SimpleCalculator:"
puts "Can it add?"

if ti85.add(543, 323) == 866
  puts "PASS!"
else
  puts "F"
end

puts
puts "Can it subtract?"

if ti85.subtract(15, 6) == 9
  puts "PASS!"
else
  puts "F"
end

puts
puts "Can it get a square tooth?"

if ti85.square_root(36) == 6
  puts "PASS!"
else
  puts "F"
end

puts
puts "Can it get a hypotenuse?"

if ti85.hypotenuse(3, 4) == 5
  puts "PASS!"
else
  puts "F"
end
