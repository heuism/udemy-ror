def multiply(first, second)
    first * second
end

def addition(first, second)
    first + second
end

def subtract(first, second)
    first - second
end

puts "Simple Calculator"

25.times { print "-" }

puts ""

puts "Enter the first number"
first_number = gets.chomp.to_i

puts "Enter the second number"
second_number = gets.chomp.to_i

puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
selected_option = gets.chomp.to_i

true_selected = selected_option % 3

if true_selected == 1
    puts "You have chosen to multiply"
    puts "The first number multiplied by the second number is: #{   }"
elsif true_selected == 2
    puts "You have chosen to addition"
    puts "The first number add by the second number is: #{addition first_number,second_number}"
elsif true_selected == 3
    puts "You have chosen to subtract"
    puts "The first number subtracted from the second number is: #{subtract first_number,second_number}"
else
    puts "Invalid option"
end
