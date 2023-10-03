puts ('Digite o coeficiente a: ')
a = gets.to_f

puts ('Digite o coeficiente b: ')
b = gets.to_f

puts ('Digite o coeficiente c: ')
c = gets.to_f



def deltaFind(a, b, c)
    delta = b ** 2 - 4 * a * c
    return delta
end

def bhaskara(a, b, c)
    x1 = (-b + Math.sqrt(deltaFind(a, b, c))) / (2 * a)
    x2 = (-b - Math.sqrt(deltaFind(a, b, c))) / (2 * a)
    return puts ("X1 = #{'%.4f' % x1}, X2 = #{'%.4f' %x2}")
end

bhaskara(a, b, c)