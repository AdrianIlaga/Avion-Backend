puts "Please enter a number between 0 and 100"
number = gets.chomp
number = number.to_i
if (number < 0)
    puts "The number #{number} is a less than 0! (B-Baka!)"
elsif (number > 100)
    puts "The number #{number} is a higher than 100! (D-Dummy!)" 
elsif (number >= 0 && number <= 50)
    puts "The number #{number} is between 0 and 50"
elsif (number >= 51 && number <= 100)
    puts "The number #{number} is between 51 and 100"
end

