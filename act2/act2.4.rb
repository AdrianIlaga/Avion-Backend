arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []

arr.each do |num|
    if (num % 2 == 0)
        # puts "#{num} is divisible by 2"
        new_arr.push(num)
    end
end

puts new_arr