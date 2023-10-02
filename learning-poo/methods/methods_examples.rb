def numero_impares(min, max)
    (min..max).each do |numero| 
        puts "O número #{numero} é ímpar" if numero.odd?
    end
end

# numero_impares(80, 90)

def titulo(texto)
    puts
    puts "====== #{texto}======"
end

# titulo('Relatório 1')

def media(elementos)
   elementos.sum / elementos.count
end

# puts("A media é: #{media([4, 7, 10])}")

def rolar_dado(faces)
    return 'numero de faces precisa ser maior que 1' if faces <= 1

    rand(faces) + 1
end

puts (rolar_dado(2))