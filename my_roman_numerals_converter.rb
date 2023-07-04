def my_roman_numerals_converter(decimal)

    roman_hash = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}

    result = ''
    
    roman_hash.each do |nbr, rom|
        while decimal >= nbr 
            decimal -= nbr
            result << rom
        end
    end

    return result
end

def prompt()
    puts "=============================================="
    puts "    Welcome to the Roman Number Converter     "
    puts "=============================================="
    puts "----------------------------------------------"
    puts "To get started, please enter a number."
    puts "Please note that it only supports numbers up to 3000."
    puts "Type 'exit' to exit the program"
    puts "----------------------------------------------"

    loop do 
        input = gets.chomp

        if input.downcase == 'exit'
            puts "Exiting..."
            exit        
        end

        decimal_number = input.to_i

        if decimal_number.zero?
            puts "Invalid input. Please provide a valid number." 
        elsif decimal_number > 3000
            puts "Invalid input. Please provide a number below 3000"
        else
            result = my_roman_numerals_converter(decimal_number)
            puts "The Decimal numeral representation is: #{input}"
            puts "The Roman numeral representation is: #{result}"
        end

        puts "----------------------------------------------"
        puts "Do you want to convert another number? (y/n)"
        choice = gets.chomp.downcase
        puts "----------------------------------------------"

        break if choice == 'n'
    end
end

prompt()


