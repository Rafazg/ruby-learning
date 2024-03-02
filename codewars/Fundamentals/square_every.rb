#* você deve elevar ao quadrado cada dígito de um número e concatená-los.
#* Por exemplo, se executarmos 9119 na função, sairá 811181, porque 92 é 81 e 12 é 1. (81-1-1-81)
#* Exemplo # 2: Uma entrada de 765 retornará/deverá retornar 493625 porque 72 é 49, 62 é 36 e 52 é 25. (49-36-25)
#* Nota: A função aceita um número inteiro e retorna um número inteiro.

def square_digits num

    individual_numbers = ""

    num.to_s.each_char do |digit|
        digit_squared = (digit.to_i ** 2).to_s
        individual_numbers += digit_squared
    end

    return individual_numbers.to_i
end

puts(square_digits(3212))