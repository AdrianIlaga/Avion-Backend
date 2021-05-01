yamero = false
action = "Get Stick Bugged Lol"
message = "Enter \"STOP\" to prevent further bugs"
continue_message = "Prepare for more bugs then"
stop_message = "No more bugs then"

while yamero == false 
    puts action
    puts message

    input = gets.chomp
    input = input.upcase

    if input == "STOP"
        yamero = true
        puts stop_message
        break
    end

    puts continue_message
end


