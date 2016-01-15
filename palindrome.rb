# Complete the method called palindrome? which should accept a string as a parameter and return a boolean indicated whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

def palindrome?(string)
    
    mid = string.length/2
    
    i = 1
    j = 0
    
    if  string.length.even?
        mid.times do
            if string[mid-i] == string[mid+j]
                i += 1
                j += 1
            else
                return false
                exit
            end
        end
    else
        mid.times do
            if string[mid-i] == string[mid+i]
                i += 1
            else
                return false
                exit
            end
        end
    end
    return true
end

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end