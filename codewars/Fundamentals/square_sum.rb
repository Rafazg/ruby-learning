numbers = [0, 3, 4, 5];

def square_sum(numbers)
  sum = 0

  numbers.each do |number|
    sum += number ** 2
  end

  return sum
end 

puts(square_sum(numbers))