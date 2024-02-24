numbers = [0, 3, 4, 5];

def square_sum(numbers)
  #itera a lista e aplica a operação / usando reduce para fazer a soma
  numbers.map {|n| n*n}.reduce(:+)
end 
