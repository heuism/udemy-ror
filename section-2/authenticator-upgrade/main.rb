require_relative 'crud' # if it is in the same directory

# require 'crud' # if it is in the same directory

# $LOAD_PATH << "." # this is the current directory
# require 'crud' # if it is in the directory of the LOAD_PATH

users = [
    {username: "hientran", password: "password1"},
    {username: "grace", password: "password2"},
    {username: "andrewpham", password: "password3"},
    {username: "dknuckey", password: "password4"},
    {username: "hientm", password: "password5"}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users

puts "Welcome to the authenticator"
25.times { print "-"}
puts
puts "This program wil ltake input from the user and compare the password"
puts "If password is correct, you will get back the user object"

attemps = 1
$MAX_ATTEMPS = 4

user_input = ""

while true
    print "Username: "
    user_name = gets.chomp.downcase
    print "Password: "
    pass_word = gets.chomp.downcase

    can_login_in = Crud.authenticate_user(user_name,pass_word, users)
    if !can_login_in.nil?
        puts can_login_in
    else
        puts "Don't have access please try again"
    end
    puts "Press n to quit or any other key to continue: "
    user_input = gets.chomp.downcase
    if user_input == "n"
        break
    end
    attemps = attemps + 1

    if attemps > $MAX_ATTEMPS
        puts "Exceed attemps"
        break
    end
end