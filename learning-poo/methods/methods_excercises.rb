# Write a program with a method named getTotal that accepts two integers as an argument and return its sum.
# Call this method from main( ) and print the results.

def getTotal(a, b)
    puts "A soma é: #{a + b}"
end

# getTotal(4, 4)

# Write a method named isEven that accepts an int argument.
# The method should return true if the argument is even, or false otherwise. Also write a program to test your method.

def isEven(number)
    if number % 2 == 0
        return puts('true')
    else
        return puts('false')
    end
end

# isEven(9)
