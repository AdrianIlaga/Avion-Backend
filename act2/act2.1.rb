array = [1,3,5,7,9,11]
number = 3

if array.include?(number)
    puts "The number #{number} is in the array"
    return true
else 
    puts "The number #{number} is not in the array"
    return false
end