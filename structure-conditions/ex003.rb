puts('Digite o Primeiro valor: ')
firstValue = gets.to_i

puts('Digite o Segundo valor: ')
secondValue = gets.to_i

puts('Digite o Terceiro valor: ')
thirdValue = gets.to_i


if firstValue < secondValue && firstValue < thirdValue
    result =  puts("Menor valor é: #{firstValue}")
    elsif secondValue < firstValue
        result =  puts("Menor valor é: #{secondValue}")
        else
            result =  puts("Menor valor é: #{thirdValue}")
        end


