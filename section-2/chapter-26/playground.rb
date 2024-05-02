array = [1,2,3,4,5,6,7,8]
string_array = array.to_s
puts string_array

p array

p array.last

a = 1..100
a_array = a.to_a

p a
p a_array

b = "a".."z"
b_array = b.to_a

p b
p b_array

p b_array.unshift("Hien") # this will mutate the array
p b_array.push("Hien") # this will mutate the array
p b_array

p b_array.uniq

p b_array

p b_array.join
p b_array

joined_b = b_array.join("--")
p joined_b

p joined_b.split("--")

string_to_array = %w(I am hien tran) # to split the string to array
p string_to_array

string_to_array.each {
    |curr| p curr
}

a_array.each {
    |num|
    if num.odd?
            p num
    end
}

odds = a_array.select {
    |num| num.odd?
}

p odds