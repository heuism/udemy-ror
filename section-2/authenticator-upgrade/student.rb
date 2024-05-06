class Student

    # new way
    attr_accessor :first_name, :last_name, :email, :username
    attr_reader :password

    def initialize(first_name, last_name, email)
      @first_name = first_name
      @last_name = last_name
      @email = email
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

hien = Student.new("Hien", "Tran", "htran@eastern.edu.au")
damien = Student.new("Damien", "Kunckey", "dknucky@mst.edu.au")
puts hien
puts damien