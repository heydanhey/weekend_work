# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

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

class FancyCalculator

  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

ti85 = FancyCalculator.new

puts "Testing FancyCalculator..."
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