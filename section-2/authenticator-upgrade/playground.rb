
# This is used for repl.it
# require 'bundler/inline'

# gemfile true do
#     source 'http://rubygems.org'
#     gem 'bcrypt'
# end

require 'bcrypt'

my_password = BCrypt::Password.create("my_password_test")
my_password_1 = BCrypt::Password.create("my_password_test")
my_password_2 = BCrypt::Password.create("my_password_test")

puts my_password == "my_password_test" # => true

puts my_password

my_password_new = BCrypt::Password.new("$2a$12$hM6qLiu8lzB4TjmpOrDiPu1lGnUVq7QANpuWYXOYWdsHIQFZ18KT2")

puts my_password_new == "my_password_test" # => true

puts my_password_new

puts my_password == my_password_1