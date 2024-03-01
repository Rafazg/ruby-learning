#* Crie uma collection do tipo hash e permita que o usuario crie três elementos informando a chave e o valor.
#* No final do programa para cada um desses elementos imprima a frase "Uma das chaves é *** e o seu valor é ***"

my_hash = {}

3.times do
    print "Informe uma chave"
    key = gets.chomp

    print "Informe um valor"
    value = gets.chomp

    my_hash[key] = value
end

my_hash.each do |key, value|
    puts "Uma das chaves é #{key} e seu valor é #{value}"
end