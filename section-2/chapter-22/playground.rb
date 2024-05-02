puts 10.equal?(10)

puts 10.equal?(10.0)

name = "hien"

puts name.object_id

puts name == "hien".tap {|test| puts "#{test.object_id}"}

puts name.equal? "hien".tap {|test| puts "#{test.object_id}"}