dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }

def get_city_names(somehash)
    somehash.keys()
end

def get_area_code(somehash, key)
    if !(somehash[key]).nil?
        return somehash[key]
    end
    "Not a valid city"
end

def main(book)
    cities = get_city_names(book)

    loop do
        25.times { print "-"}
        puts
        puts "We have these cities in the system"
        puts cities.join(" - ")
        puts
        puts "Which city do you want to get the area code?"
        selected_city = gets.chomp.downcase
        city_code = get_area_code(book, selected_city)
        puts city_code

        puts "Do you want to continue? (y/n)"
        continue = gets.chomp.downcase
        while !["y","n"].include?(continue)
            puts "Invalid selection"
            puts "Do you want to continue? (y/n)"
            continue = gets.chomp.downcase
        end
        if continue == "n"
            break
        end
    end
end

main(dial_book)