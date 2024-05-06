require_relative 'crud'

class Student
    include Crud
    # new way
    attr_accessor :first_name, :last_name, :email, :username, :password
    attr_reader :password

    def initialize(first_name, last_name, email, username, password)
      @first_name = first_name
      @last_name = last_name
      @email = email
      @username = username
      @password = Crud.create_hash_digest(password) # using this to automatically generate a hash from user creation
    end

    # old way
    # @first_name
    # @email
    # @username
    # @password

    # def first_name=(first_name) # = is used for setter
    #     @first_name = first_name
    # end

    # def first_name # is used for getter
    #     @first_name
    # end

    def to_s
        "Student name is #{@first_name} #{@last_name}"
    end
end

hien = Student.new("Hien", "Tran", "htran@eastern.edu.au", "hientranEastern", "password1")
p hien

