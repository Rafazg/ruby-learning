array = []

i = 1

3.times do
  print "Digite o #{i} numero"
  array.push gets.chomp.to_i
  i += 1
end

array.each do |a|
  result = a ** 2
  puts "numero #{a} elevado a segunda potencia é #{result}"
end
