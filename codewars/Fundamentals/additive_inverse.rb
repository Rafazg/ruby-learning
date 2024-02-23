#* Dado um conjunto de números, retorne o inverso aditivo de cada um.
#* Cada positivo torna-se negativo e os negativos tornam-se positivos.
#* Você pode assumir que todos os valores são inteiros. Não altere a matriz/lista de entrada.

# invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
# invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
# invert([]) == []

set_numbers = [1, -2, 3, 4, 5, 10, 50, 60, 80, -100]
  

def invert_number(arr)
  inverse_numbers = []

  arr.each do |number|
    inverse_numbers << -number
  end

  return inverse_numbers
end







