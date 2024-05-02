$users = [
    {username: "hientran", password: "password1"},
    {username: "grace", password: "password2"},
    {username: "andrewpham", password: "password3"},
    {username: "dknuckey", password: "password4"},
    {username: "hientm", password: "password5"}
]

puts "Welcome to the authenticator"
25.times { print "-"}
puts
puts "This program wil ltake input from the user and compare the password"
puts "If password is correct, you will get back the user object"

attemps = 1
MAX_ATTEMPS = 4

def authenticate_process(username, password)
    if $users.include?({username: username, password: password})
        {username: username, password: password}
    else
        nil
    end
end

user_input = ""

while attemps <= MAX_ATTEMPS && user_input != "n"
    print "Username: "
    user_name = gets.chomp.downcase
    print "Password: "
    pass_word = gets.chomp.downcase

    can_login_in = authenticate_process(user_name,pass_word)
    if !can_login_in.nil?
        puts can_login_in
    else
        puts "Don't have access please try again"
    end
    puts "Press n to quit or any other key to continue: "
    user_input = gets.chomp.downcase
end