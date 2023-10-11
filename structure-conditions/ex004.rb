
puts('')
def operadora()
    puts('Escreva a quantidade de minutos: ')
    minutos = gets.to_i

    valorPago = 50.0
    
    if minutos > 100
        valorPago = valorPago + 2 * (minutos - 100)
    end
    return valorPago
end

puts("O valor a pagar é de : R$ #{operadora}")
