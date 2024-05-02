name = "Hien"

if name == "Hien"
    puts "good name"
else
    puts "too bad"
end

if name == "test"
    puts "maybe it is test?"
elsif name == "Tran"
    puts "maybe it is Tran"
else
    puts "Maybe it is nothing"
end

def print_welcome(name)
    if name.nil? || name.empty?
        name.replace "User"
    end
    puts "Hello there, #{name}"
end

name = gets.chomp
print_welcome name

puts name