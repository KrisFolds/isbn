

puts "Hi, what is your ISBN number ?"
arr = gets.chomp
puts "Ok, let me validate that number."


def Valid_ten_digit(element)
    answer = element
    sum = 0
    answer.each_char.with_index do |char, ind|
        result = char.to_i * ind
        sum += result    
    end    
        if sum % 11 == 0
            then puts "Ok, you gave me a valid ten digit ISBN."
            
        else
            puts "Sorry, this is not a valid ten digit ISBN."
            
        end 
end


def Valid_thirteen_digit(element)
    answer = element
    sum = 0

    answer.each_char.with_index do |char, ind|
        result = (char.to_i*(ind % 2 == 0 ? 1:3))
        sum += result
    end
        if sum % 10 == 0
                then puts "Ok, you gave me a valid 13 digit ISBN."
            
        else
            puts "Sorry, this is not a valid 13 digit ISBN."
            
        end 
end
if arr.length == 10
    Valid_ten_digit(arr)
elsif arr.length == 13
    Valid_thirteen_digit(arr)
else
    puts "This is not a valid ISBN number.  It must be 10 or 13 characters"
    
