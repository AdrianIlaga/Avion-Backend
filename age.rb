# 1. Each method

values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

values.each { |value| puts value }

# 2. Hash

h = {a:1, b:2, c:3, d:4}

# 2a. Get :b
puts h[:b]

# 2b. Add key:value pair {e:5}
h[:e] = 5

puts h[:e]

# 3 Array to Hash

contact_data = [
    ["ana@email.com", "123 Main st.", "555-123-4567"],
    ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {
    "Analyn Cajocson" => {},
    "Avion School" => {}
}

def arrayToHash(array, hash)
    counter = 0
    hash.each do |key, value|
        data = array[counter]
        hash[key] = {
            :email => data[0],
            :address => data[1],
            :phone => data[2]
        }
        counter += 1
    end
end
    
arrayToHash(contact_data, contacts)

contacts.each {|contact| puts contact}

# 4. Get age

def age()
    puts "How old are you?"
    current_age = gets.chomp
    current_age = current_age.to_i
    to_add = [10, 20, 30, 40]
    to_add.each do |x|
        puts "In #{x} years you will be"
        puts "#{current_age + x}"
    end
end

age()